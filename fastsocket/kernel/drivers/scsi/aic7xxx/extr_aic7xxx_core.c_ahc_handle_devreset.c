
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct ahc_tmode_tstate {struct ahc_tmode_lstate** enabled_luns; } ;
struct ahc_tmode_lstate {int dummy; } ;
struct ahc_softc {struct ahc_tmode_tstate** enabled_targets; } ;
struct ahc_devinfo {int target; int channel; size_t our_scsiid; int role; } ;
typedef scalar_t__ cam_status ;


 int AC_SENT_BDR ;
 size_t AHC_NUM_LUNS ;
 int AHC_TRANS_CUR ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_SEL_TIMEOUT ;
 int MSG_BUS_DEV_RESET ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 int SCB_LIST_NULL ;
 int TRUE ;
 int ahc_abort_scbs (struct ahc_softc*,int,int,int ,int ,int ,scalar_t__) ;
 char* ahc_name (struct ahc_softc*) ;
 int ahc_queue_lstate_event (struct ahc_softc*,struct ahc_tmode_lstate*,size_t,int ,int ) ;
 int ahc_send_async (struct ahc_softc*,int,int,int ,int ) ;
 int ahc_send_lstate_events (struct ahc_softc*,struct ahc_tmode_lstate*) ;
 int ahc_set_syncrate (struct ahc_softc*,struct ahc_devinfo*,int *,int ,int ,int ,int ,int ) ;
 int ahc_set_width (struct ahc_softc*,struct ahc_devinfo*,int ,int ,int ) ;
 int bootverbose ;
 int printf (char*,char*,char*,int,int,int) ;

__attribute__((used)) static void
ahc_handle_devreset(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
      cam_status status, char *message, int verbose_level)
{




 int found;

 found = ahc_abort_scbs(ahc, devinfo->target, devinfo->channel,
          CAM_LUN_WILDCARD, SCB_LIST_NULL, devinfo->role,
          status);
 ahc_set_width(ahc, devinfo, MSG_EXT_WDTR_BUS_8_BIT,
        AHC_TRANS_CUR, TRUE);
 ahc_set_syncrate(ahc, devinfo, ((void*)0),
              0, 0, 0,
    AHC_TRANS_CUR, TRUE);

 if (status != CAM_SEL_TIMEOUT)
  ahc_send_async(ahc, devinfo->channel, devinfo->target,
          CAM_LUN_WILDCARD, AC_SENT_BDR);

 if (message != ((void*)0)
  && (verbose_level <= bootverbose))
  printf("%s: %s on %c:%d. %d SCBs aborted\n", ahc_name(ahc),
         message, devinfo->channel, devinfo->target, found);
}
