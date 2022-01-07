
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ahc_tmode_tstate {TYPE_1__* transinfo; scalar_t__ ultraenb; struct ahc_tmode_tstate* enabled_luns; } ;
struct ahc_softc {size_t our_id; int our_id_b; struct ahc_tmode_tstate** enabled_targets; } ;
struct TYPE_2__ {struct ahc_tmode_tstate goal; struct ahc_tmode_tstate curr; } ;


 int AHC_NUM_TARGETS ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int ahc_name (struct ahc_softc*) ;
 scalar_t__ malloc (int,int ,int ) ;
 int memcpy (struct ahc_tmode_tstate*,struct ahc_tmode_tstate*,int) ;
 int memset (struct ahc_tmode_tstate*,int ,int) ;
 int panic (char*,int ) ;

__attribute__((used)) static struct ahc_tmode_tstate *
ahc_alloc_tstate(struct ahc_softc *ahc, u_int scsi_id, char channel)
{
 struct ahc_tmode_tstate *master_tstate;
 struct ahc_tmode_tstate *tstate;
 int i;

 master_tstate = ahc->enabled_targets[ahc->our_id];
 if (channel == 'B') {
  scsi_id += 8;
  master_tstate = ahc->enabled_targets[ahc->our_id_b + 8];
 }
 if (ahc->enabled_targets[scsi_id] != ((void*)0)
  && ahc->enabled_targets[scsi_id] != master_tstate)
  panic("%s: ahc_alloc_tstate - Target already allocated",
        ahc_name(ahc));
 tstate = (struct ahc_tmode_tstate*)malloc(sizeof(*tstate),
         M_DEVBUF, M_NOWAIT);
 if (tstate == ((void*)0))
  return (((void*)0));







 if (master_tstate != ((void*)0)) {
  memcpy(tstate, master_tstate, sizeof(*tstate));
  memset(tstate->enabled_luns, 0, sizeof(tstate->enabled_luns));
  tstate->ultraenb = 0;
  for (i = 0; i < AHC_NUM_TARGETS; i++) {
   memset(&tstate->transinfo[i].curr, 0,
         sizeof(tstate->transinfo[i].curr));
   memset(&tstate->transinfo[i].goal, 0,
         sizeof(tstate->transinfo[i].goal));
  }
 } else
  memset(tstate, 0, sizeof(*tstate));
 ahc->enabled_targets[scsi_id] = tstate;
 return (tstate);
}
