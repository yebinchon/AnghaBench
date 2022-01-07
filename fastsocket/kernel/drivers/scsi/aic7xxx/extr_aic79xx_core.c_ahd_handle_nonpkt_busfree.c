
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct scb {int flags; TYPE_1__* hscb; TYPE_3__* io_ctx; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int msg_flags; int* msgout_buf; int msgout_index; } ;
struct TYPE_11__ {int transport_version; scalar_t__ ppr_options; } ;
struct TYPE_10__ {int ppr_options; int transport_version; } ;
struct ahd_initiator_tinfo {TYPE_5__ goal; TYPE_4__ curr; } ;
struct ahd_devinfo {int target; int our_scsiid; int channel; } ;
struct TYPE_12__ {char* phasemsg; } ;
struct TYPE_8__ {scalar_t__ func_code; } ;
struct TYPE_9__ {TYPE_2__ ccb_h; } ;
struct TYPE_7__ {scalar_t__ lun; int control; } ;


 int AHDMSG_1B ;
 int AHDMSG_EXT ;
 int AHD_SHOW_MESSAGES ;
 int AHD_TRANS_CUR ;
 int AHD_TRANS_GOAL ;
 int CAM_BDR_SENT ;
 int CAM_LUN_WILDCARD ;
 int CAM_REQUEUE_REQ ;
 int CAM_REQ_ABORTED ;
 int CAM_REQ_CMP ;
 int CAM_UNEXP_BUSFREE ;
 int FALSE ;
 int LASTPHASE ;
 int MSG_ABORT ;
 int MSG_ABORT_TAG ;
 int MSG_BUS_DEV_RESET ;
 int MSG_EXT_PPR ;
 int MSG_EXT_PPR_IU_REQ ;
 int MSG_EXT_SDTR ;
 int MSG_EXT_WDTR ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 int MSG_FLAG_EXPECT_IDE_BUSFREE ;
 int MSG_FLAG_EXPECT_PPR_BUSFREE ;
 int MSG_FLAG_EXPECT_QASREJ_BUSFREE ;
 int MSG_FLAG_IU_REQ_CHANGED ;
 int MSG_INITIATOR_DET_ERR ;
 int MSG_MESSAGE_REJECT ;
 scalar_t__ NOT_IDENTIFIED ;
 int PRGMCNT ;
 scalar_t__ P_BUSFREE ;
 scalar_t__ P_MESGIN ;
 scalar_t__ P_MESGOUT ;
 int ROLE_INITIATOR ;
 int SAVED_LUN ;
 int SAVED_SCSIID ;
 int SCB_EXTERNAL_RESET ;
 char SCB_GET_CHANNEL (struct ahd_softc*,struct scb*) ;
 scalar_t__ SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TAG (struct scb*) ;
 scalar_t__ SCB_GET_TARGET (struct ahd_softc*,struct scb*) ;
 scalar_t__ SCB_LIST_NULL ;
 scalar_t__ SCSIID_OUR_ID (scalar_t__) ;
 scalar_t__ SCSIID_TARGET (struct ahd_softc*,scalar_t__) ;
 int SEQ_FLAGS ;
 int TAG_ENB ;
 int TRUE ;
 scalar_t__ XPT_RESET_DEV ;
 int ahd_abort_scbs (struct ahd_softc*,scalar_t__,char,scalar_t__,scalar_t__,int ,int ) ;
 int ahd_compile_devinfo (struct ahd_devinfo*,scalar_t__,scalar_t__,scalar_t__,char,int ) ;
 int ahd_debug ;
 int ahd_done (struct ahd_softc*,struct scb*) ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,int ,int ,int ,struct ahd_tmode_tstate**) ;
 int ahd_force_renegotiation (struct ahd_softc*,struct ahd_devinfo*) ;
 int ahd_freeze_devq (struct ahd_softc*,struct scb*) ;
 int ahd_freeze_scb (struct scb*) ;
 scalar_t__ ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_handle_devreset (struct ahd_softc*,struct ahd_devinfo*,int ,int ,char*,int ) ;
 scalar_t__ ahd_inb (struct ahd_softc*,int ) ;
 int ahd_inw (struct ahd_softc*,int ) ;
 TYPE_6__* ahd_lookup_phase_entry (scalar_t__) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,scalar_t__) ;
 scalar_t__ ahd_match_scb (struct ahd_softc*,struct scb*,scalar_t__,char,int ,scalar_t__,int ) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_print_devinfo (struct ahd_softc*,struct ahd_devinfo*) ;
 int ahd_print_path (struct ahd_softc*,struct scb*) ;
 int ahd_qinfifo_requeue_tail (struct ahd_softc*,struct scb*) ;
 scalar_t__ ahd_sent_msg (struct ahd_softc*,int ,int,int ) ;
 int ahd_set_syncrate (struct ahd_softc*,struct ahd_devinfo*,int ,int ,int ,int,int ) ;
 int ahd_set_transaction_status (struct scb*,int ) ;
 int ahd_set_width (struct ahd_softc*,struct ahd_devinfo*,int ,int,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int
ahd_handle_nonpkt_busfree(struct ahd_softc *ahd)
{
 struct ahd_devinfo devinfo;
 struct scb *scb;
 u_int lastphase;
 u_int saved_scsiid;
 u_int saved_lun;
 u_int target;
 u_int initiator_role_id;
 u_int scbid;
 u_int ppr_busfree;
 int printerror;






 lastphase = ahd_inb(ahd, LASTPHASE);
 saved_scsiid = ahd_inb(ahd, SAVED_SCSIID);
 saved_lun = ahd_inb(ahd, SAVED_LUN);
 target = SCSIID_TARGET(ahd, saved_scsiid);
 initiator_role_id = SCSIID_OUR_ID(saved_scsiid);
 ahd_compile_devinfo(&devinfo, initiator_role_id,
       target, saved_lun, 'A', ROLE_INITIATOR);
 printerror = 1;

 scbid = ahd_get_scbptr(ahd);
 scb = ahd_lookup_scb(ahd, scbid);
 if (scb != ((void*)0)
  && (ahd_inb(ahd, SEQ_FLAGS) & NOT_IDENTIFIED) != 0)
  scb = ((void*)0);

 ppr_busfree = (ahd->msg_flags & MSG_FLAG_EXPECT_PPR_BUSFREE) != 0;
 if (lastphase == P_MESGOUT) {
  u_int tag;

  tag = SCB_LIST_NULL;
  if (ahd_sent_msg(ahd, AHDMSG_1B, MSG_ABORT_TAG, TRUE)
   || ahd_sent_msg(ahd, AHDMSG_1B, MSG_ABORT, TRUE)) {
   int found;
   int sent_msg;

   if (scb == ((void*)0)) {
    ahd_print_devinfo(ahd, &devinfo);
    printf("Abort for unidentified "
           "connection completed.\n");

    return (1);
   }
   sent_msg = ahd->msgout_buf[ahd->msgout_index - 1];
   ahd_print_path(ahd, scb);
   printf("SCB %d - Abort%s Completed.\n",
          SCB_GET_TAG(scb),
          sent_msg == MSG_ABORT_TAG ? "" : " Tag");

   if (sent_msg == MSG_ABORT_TAG)
    tag = SCB_GET_TAG(scb);

   if ((scb->flags & SCB_EXTERNAL_RESET) != 0) {
    tag = SCB_GET_TAG(scb);
    saved_lun = scb->hscb->lun;
   }
   found = ahd_abort_scbs(ahd, target, 'A', saved_lun,
            tag, ROLE_INITIATOR,
            CAM_REQ_ABORTED);
   printf("found == 0x%x\n", found);
   printerror = 0;
  } else if (ahd_sent_msg(ahd, AHDMSG_1B,
     MSG_BUS_DEV_RESET, TRUE)) {
   ahd_handle_devreset(ahd, &devinfo, CAM_LUN_WILDCARD,
         CAM_BDR_SENT, "Bus Device Reset",
                          0);
   printerror = 0;
  } else if (ahd_sent_msg(ahd, AHDMSG_EXT, MSG_EXT_PPR, FALSE)
   && ppr_busfree == 0) {
   struct ahd_initiator_tinfo *tinfo;
   struct ahd_tmode_tstate *tstate;
   tinfo = ahd_fetch_transinfo(ahd, devinfo.channel,
          devinfo.our_scsiid,
          devinfo.target, &tstate);
   if ((tinfo->curr.ppr_options & MSG_EXT_PPR_IU_REQ)!=0) {
    ahd_set_width(ahd, &devinfo,
           MSG_EXT_WDTR_BUS_8_BIT,
           AHD_TRANS_CUR,
                     TRUE);
    ahd_set_syncrate(ahd, &devinfo,
                0, 0,
                     0,
      AHD_TRANS_CUR,
                TRUE);





   } else {
    tinfo->curr.transport_version = 2;
    tinfo->goal.transport_version = 2;
    tinfo->goal.ppr_options = 0;
    if (scb != ((void*)0)) {






     ahd_freeze_devq(ahd, scb);
     ahd_qinfifo_requeue_tail(ahd, scb);
    }
    printerror = 0;
   }
  } else if (ahd_sent_msg(ahd, AHDMSG_EXT, MSG_EXT_WDTR, FALSE)
   && ppr_busfree == 0) {
   ahd_set_width(ahd, &devinfo,
          MSG_EXT_WDTR_BUS_8_BIT,
          AHD_TRANS_CUR|AHD_TRANS_GOAL,
                    TRUE);
   if (scb != ((void*)0)) {






    ahd_freeze_devq(ahd, scb);
    ahd_qinfifo_requeue_tail(ahd, scb);
   }
   printerror = 0;
  } else if (ahd_sent_msg(ahd, AHDMSG_EXT, MSG_EXT_SDTR, FALSE)
   && ppr_busfree == 0) {
   ahd_set_syncrate(ahd, &devinfo,
               0, 0,
                    0,
     AHD_TRANS_CUR|AHD_TRANS_GOAL,
               TRUE);
   if (scb != ((void*)0)) {






    ahd_freeze_devq(ahd, scb);
    ahd_qinfifo_requeue_tail(ahd, scb);
   }
   printerror = 0;
  } else if ((ahd->msg_flags & MSG_FLAG_EXPECT_IDE_BUSFREE) != 0
   && ahd_sent_msg(ahd, AHDMSG_1B,
      MSG_INITIATOR_DET_ERR, TRUE)) {





   printerror = 0;
  } else if ((ahd->msg_flags & MSG_FLAG_EXPECT_QASREJ_BUSFREE)
   && ahd_sent_msg(ahd, AHDMSG_1B,
     MSG_MESSAGE_REJECT, TRUE)) {





   printerror = 0;
  }
 }






 if (scb != ((void*)0) && printerror != 0
  && (lastphase == P_MESGIN || lastphase == P_MESGOUT)
  && ((ahd->msg_flags & MSG_FLAG_EXPECT_PPR_BUSFREE) != 0)) {

  ahd_freeze_devq(ahd, scb);
  ahd_set_transaction_status(scb, CAM_REQUEUE_REQ);
  ahd_freeze_scb(scb);
  if ((ahd->msg_flags & MSG_FLAG_IU_REQ_CHANGED) != 0) {
   ahd_abort_scbs(ahd, SCB_GET_TARGET(ahd, scb),
           SCB_GET_CHANNEL(ahd, scb),
           SCB_GET_LUN(scb), SCB_LIST_NULL,
           ROLE_INITIATOR, CAM_REQ_ABORTED);
  } else {




   ahd_done(ahd, scb);
  }
  printerror = 0;
 }
 if (printerror != 0) {
  int aborted;

  aborted = 0;
  if (scb != ((void*)0)) {
   u_int tag;

   if ((scb->hscb->control & TAG_ENB) != 0)
    tag = SCB_GET_TAG(scb);
   else
    tag = SCB_LIST_NULL;
   ahd_print_path(ahd, scb);
   aborted = ahd_abort_scbs(ahd, target, 'A',
           SCB_GET_LUN(scb), tag,
           ROLE_INITIATOR,
           CAM_UNEXP_BUSFREE);
  } else {




   printf("%s: ", ahd_name(ahd));
  }
  printf("Unexpected busfree %s, %d SCBs aborted, "
         "PRGMCNT == 0x%x\n",
         ahd_lookup_phase_entry(lastphase)->phasemsg,
         aborted,
         ahd_inw(ahd, PRGMCNT));
  ahd_dump_card_state(ahd);
  if (lastphase != P_BUSFREE)
   ahd_force_renegotiation(ahd, &devinfo);
 }

 return (1);
}
