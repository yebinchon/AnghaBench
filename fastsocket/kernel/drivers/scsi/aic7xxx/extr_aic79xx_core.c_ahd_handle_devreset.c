
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ahd_tmode_tstate {struct ahd_tmode_lstate** enabled_luns; } ;
struct ahd_tmode_lstate {int dummy; } ;
struct ahd_softc {struct ahd_tmode_tstate** enabled_targets; } ;
struct ahd_devinfo {int target; int channel; size_t our_scsiid; int role; } ;
typedef scalar_t__ cam_status ;


 int AC_SENT_BDR ;
 scalar_t__ AHD_NUM_LUNS ;
 int AHD_TRANS_CUR ;
 scalar_t__ CAM_LUN_WILDCARD ;
 scalar_t__ CAM_SEL_TIMEOUT ;
 int MSG_BUS_DEV_RESET ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 int SCB_LIST_NULL ;
 int TRUE ;
 int ahd_abort_scbs (struct ahd_softc*,int,int,scalar_t__,int ,int ,scalar_t__) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_queue_lstate_event (struct ahd_softc*,struct ahd_tmode_lstate*,size_t,int ,int ) ;
 int ahd_send_async (struct ahd_softc*,int,int,scalar_t__,int ) ;
 int ahd_send_lstate_events (struct ahd_softc*,struct ahd_tmode_lstate*) ;
 int ahd_set_syncrate (struct ahd_softc*,struct ahd_devinfo*,int ,int ,int ,int ,int ) ;
 int ahd_set_width (struct ahd_softc*,struct ahd_devinfo*,int ,int ,int ) ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,char*,int,int,int) ;

__attribute__((used)) static void
ahd_handle_devreset(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
      u_int lun, cam_status status, char *message,
      int verbose_level)
{



 int found;

 found = ahd_abort_scbs(ahd, devinfo->target, devinfo->channel,
          lun, SCB_LIST_NULL, devinfo->role,
          status);
 ahd_set_width(ahd, devinfo, MSG_EXT_WDTR_BUS_8_BIT,
        AHD_TRANS_CUR, TRUE);
 ahd_set_syncrate(ahd, devinfo, 0, 0,
                   0, AHD_TRANS_CUR,
              TRUE);

 if (status != CAM_SEL_TIMEOUT)
  ahd_send_async(ahd, devinfo->channel, devinfo->target,
          CAM_LUN_WILDCARD, AC_SENT_BDR);

 if (message != ((void*)0) && bootverbose)
  printf("%s: %s on %c:%d. %d SCBs aborted\n", ahd_name(ahd),
         message, devinfo->channel, devinfo->target, found);
}
