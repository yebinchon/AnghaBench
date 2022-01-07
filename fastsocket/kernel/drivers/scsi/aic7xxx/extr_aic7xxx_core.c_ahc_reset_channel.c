
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct ahc_tmode_tstate {struct ahc_tmode_lstate** enabled_luns; } ;
struct ahc_tmode_lstate {int dummy; } ;
struct ahc_softc {int flags; int features; struct ahc_tmode_tstate** enabled_targets; int * pending_device; } ;
struct ahc_devinfo {int channel; } ;


 int AC_BUS_RESET ;
 size_t AHC_NUM_LUNS ;
 int AHC_TARGETROLE ;
 int AHC_TRANS_CUR ;
 int AHC_TWIN ;
 int AHC_WIDE ;
 int CAM_LUN_WILDCARD ;
 int CAM_SCSI_BUS_RESET ;
 size_t CAM_TARGET_WILDCARD ;
 size_t ENAUTOATNP ;
 size_t ENBUSFREE ;
 size_t ENRSELI ;
 size_t ENSCSIRST ;
 size_t ENSELI ;
 int EVENT_TYPE_BUS_RESET ;
 int FALSE ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 int ROLE_UNKNOWN ;
 int SBLKCTL ;
 int SCB_LIST_NULL ;
 int SCSISEQ ;
 int SCSISEQ_TEMPLATE ;
 size_t SELBUSB ;
 int SIMODE1 ;
 int TRUE ;
 int ahc_abort_scbs (struct ahc_softc*,size_t,char,int ,int ,int ,int ) ;
 int ahc_clear_critical_section (struct ahc_softc*) ;
 int ahc_clear_intstat (struct ahc_softc*) ;
 int ahc_compile_devinfo (struct ahc_devinfo*,size_t,size_t,int ,char,int ) ;
 size_t ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,size_t) ;
 int ahc_pause (struct ahc_softc*) ;
 int ahc_queue_lstate_event (struct ahc_softc*,struct ahc_tmode_lstate*,size_t,int ,int ) ;
 int ahc_reset_current_bus (struct ahc_softc*) ;
 int ahc_restart (struct ahc_softc*) ;
 int ahc_run_qoutfifo (struct ahc_softc*) ;
 int ahc_run_tqinfifo (struct ahc_softc*,int) ;
 int ahc_send_async (struct ahc_softc*,int ,size_t,int ,int ) ;
 int ahc_send_lstate_events (struct ahc_softc*,struct ahc_tmode_lstate*) ;
 int ahc_set_syncrate (struct ahc_softc*,struct ahc_devinfo*,int *,int ,int ,int ,int ,int) ;
 int ahc_set_width (struct ahc_softc*,struct ahc_devinfo*,int ,int ,int) ;
 int ahc_unpause (struct ahc_softc*) ;

int
ahc_reset_channel(struct ahc_softc *ahc, char channel, int initiate_reset)
{
 struct ahc_devinfo devinfo;
 u_int initiator, target, max_scsiid;
 u_int sblkctl;
 u_int scsiseq;
 u_int simode1;
 int found;
 int restart_needed;
 char cur_channel;

 ahc->pending_device = ((void*)0);

 ahc_compile_devinfo(&devinfo,
       CAM_TARGET_WILDCARD,
       CAM_TARGET_WILDCARD,
       CAM_LUN_WILDCARD,
       channel, ROLE_UNKNOWN);
 ahc_pause(ahc);


 ahc_clear_critical_section(ahc);






 ahc_run_qoutfifo(ahc);
 sblkctl = ahc_inb(ahc, SBLKCTL);
 cur_channel = 'A';
 if ((ahc->features & AHC_TWIN) != 0
  && ((sblkctl & SELBUSB) != 0))
     cur_channel = 'B';
 scsiseq = ahc_inb(ahc, SCSISEQ_TEMPLATE);
 if (cur_channel != channel) {




  ahc_outb(ahc, SBLKCTL, sblkctl ^ SELBUSB);
  simode1 = ahc_inb(ahc, SIMODE1) & ~(ENBUSFREE|ENSCSIRST);
  ahc_outb(ahc, SIMODE1, simode1);
  if (initiate_reset)
   ahc_reset_current_bus(ahc);
  ahc_clear_intstat(ahc);
  ahc_outb(ahc, SCSISEQ, scsiseq & (ENSELI|ENRSELI|ENAUTOATNP));
  ahc_outb(ahc, SBLKCTL, sblkctl);
  restart_needed = FALSE;
 } else {

  simode1 = ahc_inb(ahc, SIMODE1) & ~(ENBUSFREE|ENSCSIRST);
  ahc_outb(ahc, SIMODE1, simode1);
  if (initiate_reset)
   ahc_reset_current_bus(ahc);
  ahc_clear_intstat(ahc);
  ahc_outb(ahc, SCSISEQ, scsiseq & (ENSELI|ENRSELI|ENAUTOATNP));
  restart_needed = TRUE;
 }





 found = ahc_abort_scbs(ahc, CAM_TARGET_WILDCARD, channel,
          CAM_LUN_WILDCARD, SCB_LIST_NULL,
          ROLE_UNKNOWN, CAM_SCSI_BUS_RESET);

 max_scsiid = (ahc->features & AHC_WIDE) ? 15 : 7;
 ahc_send_async(ahc, devinfo.channel, CAM_TARGET_WILDCARD,
         CAM_LUN_WILDCARD, AC_BUS_RESET);




 for (target = 0; target <= max_scsiid; target++) {

  if (ahc->enabled_targets[target] == ((void*)0))
   continue;
  for (initiator = 0; initiator <= max_scsiid; initiator++) {
   struct ahc_devinfo devinfo;

   ahc_compile_devinfo(&devinfo, target, initiator,
         CAM_LUN_WILDCARD,
         channel, ROLE_UNKNOWN);
   ahc_set_width(ahc, &devinfo, MSG_EXT_WDTR_BUS_8_BIT,
          AHC_TRANS_CUR, TRUE);
   ahc_set_syncrate(ahc, &devinfo, ((void*)0),
                0, 0,
                     0, AHC_TRANS_CUR,
                TRUE);
  }
 }

 if (restart_needed)
  ahc_restart(ahc);
 else
  ahc_unpause(ahc);
 return found;
}
