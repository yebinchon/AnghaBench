
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct scb {int dummy; } ;
struct ahd_softc {int flags; size_t qoutfifonext; int qoutfifonext_valid_tag; struct ahd_completion* qoutfifo; } ;
struct ahd_completion {int sg_status; int tag; int valid_tag; } ;


 int AHD_QOUT_SIZE ;
 int AHD_RUNNING_QOUTFIFO ;
 int BUS_DMASYNC_POSTREAD ;
 int QOUTFIFO_ENTRY_VALID ;
 int SG_STATUS_VALID ;
 int ahd_done (struct ahd_softc*,struct scb*) ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 int ahd_handle_scb_status (struct ahd_softc*,struct scb*) ;
 int ahd_le16toh (int ) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,int) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_sync_qoutfifo (struct ahd_softc*,int ) ;
 int panic (char*) ;
 int printf (char*,char*,int,size_t) ;

__attribute__((used)) static void
ahd_run_qoutfifo(struct ahd_softc *ahd)
{
 struct ahd_completion *completion;
 struct scb *scb;
 u_int scb_index;

 if ((ahd->flags & AHD_RUNNING_QOUTFIFO) != 0)
  panic("ahd_run_qoutfifo recursion");
 ahd->flags |= AHD_RUNNING_QOUTFIFO;
 ahd_sync_qoutfifo(ahd, BUS_DMASYNC_POSTREAD);
 for (;;) {
  completion = &ahd->qoutfifo[ahd->qoutfifonext];

  if (completion->valid_tag != ahd->qoutfifonext_valid_tag)
   break;

  scb_index = ahd_le16toh(completion->tag);
  scb = ahd_lookup_scb(ahd, scb_index);
  if (scb == ((void*)0)) {
   printf("%s: WARNING no command for scb %d "
          "(cmdcmplt)\nQOUTPOS = %d\n",
          ahd_name(ahd), scb_index,
          ahd->qoutfifonext);
   ahd_dump_card_state(ahd);
  } else if ((completion->sg_status & SG_STATUS_VALID) != 0) {
   ahd_handle_scb_status(ahd, scb);
  } else {
   ahd_done(ahd, scb);
  }

  ahd->qoutfifonext = (ahd->qoutfifonext+1) & (AHD_QOUT_SIZE-1);
  if (ahd->qoutfifonext == 0)
   ahd->qoutfifonext_valid_tag ^= QOUTFIFO_ENTRY_VALID;
 }
 ahd->flags &= ~AHD_RUNNING_QOUTFIFO;
}
