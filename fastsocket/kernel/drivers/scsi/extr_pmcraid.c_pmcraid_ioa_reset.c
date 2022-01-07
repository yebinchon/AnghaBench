
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pmcraid_instance {int ioa_reset_in_progress; int ioa_state; void* ioa_shutdown_type; int reset_wait_q; scalar_t__ ioa_bringdown; struct pmcraid_cmd* reset_cmd; scalar_t__ ioa_reset_attempts; int force_ioa_reset; int ioa_unit_check; int pdev; int ioa_status; int ioa_hard_reset; int host; } ;
struct pmcraid_cmd {struct pmcraid_instance* drv_inst; } ;


 int INTRS_TRANSITION_TO_OPERATIONAL ;
 scalar_t__ PMCRAID_RESET_ATTEMPTS ;
 int PMC_DEVICE_EVENT_RESET_FAILED ;
 int PMC_DEVICE_EVENT_RESET_SUCCESS ;
 int PMC_DEVICE_EVENT_SHUTDOWN_FAILED ;
 int PMC_DEVICE_EVENT_SHUTDOWN_SUCCESS ;
 void* SHUTDOWN_NONE ;
 int ioread32 (int ) ;
 int pci_restore_state (int ) ;
 int pmcraid_disable_interrupts (struct pmcraid_instance*,int ) ;
 int pmcraid_err (char*) ;
 int pmcraid_fail_outstanding_cmds (struct pmcraid_instance*) ;
 int pmcraid_get_dump (struct pmcraid_instance*) ;
 int pmcraid_identify_hrrq (struct pmcraid_cmd*) ;
 int pmcraid_info (char*,...) ;
 int pmcraid_notify_ioastate (struct pmcraid_instance*,int ) ;
 int pmcraid_register_hcams (struct pmcraid_instance*) ;
 int pmcraid_reinit_cmdblk (struct pmcraid_cmd*) ;
 int pmcraid_reset_alert (struct pmcraid_cmd*) ;
 int pmcraid_reset_enable_ioa (struct pmcraid_instance*) ;
 int pmcraid_return_cmd (struct pmcraid_cmd*) ;
 int pmcraid_soft_reset (struct pmcraid_cmd*) ;
 int pmcraid_start_bist (struct pmcraid_cmd*) ;
 int pmcraid_unregister_hcams (struct pmcraid_cmd*) ;
 int scsi_block_requests (int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void pmcraid_ioa_reset(struct pmcraid_cmd *cmd)
{
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 u8 reset_complete = 0;

 pinstance->ioa_reset_in_progress = 1;

 if (pinstance->reset_cmd != cmd) {
  pmcraid_err("reset is called with different command block\n");
  pinstance->reset_cmd = cmd;
 }

 pmcraid_info("reset_engine: state = %d, command = %p\n",
        pinstance->ioa_state, cmd);

 switch (pinstance->ioa_state) {

 case 135:




  pmcraid_err("IOA is offline no reset is possible\n");
  reset_complete = 1;
  break;

 case 134:




  pmcraid_disable_interrupts(pinstance, ~0);
  pinstance->ioa_state = 131;
  pmcraid_reset_alert(cmd);
  break;

 case 128:



  scsi_block_requests(pinstance->host);





  if (pinstance->ioa_hard_reset == 0) {
   if (ioread32(pinstance->ioa_status) &
       INTRS_TRANSITION_TO_OPERATIONAL) {
    pmcraid_info("sticky bit set, bring-up\n");
    pinstance->ioa_state = 133;
    pmcraid_reinit_cmdblk(cmd);
    pmcraid_identify_hrrq(cmd);
   } else {
    pinstance->ioa_state = 130;
    pmcraid_soft_reset(cmd);
   }
  } else {



   pinstance->ioa_state = 131;
   pmcraid_reset_alert(cmd);
  }
  break;

 case 131:





  pinstance->ioa_state = 132;
  pmcraid_start_bist(cmd);
  break;

 case 132:
  pinstance->ioa_reset_attempts++;


  if (pinstance->ioa_reset_attempts > PMCRAID_RESET_ATTEMPTS) {
   pinstance->ioa_reset_attempts = 0;
   pmcraid_err("IOA didn't respond marking it as dead\n");
   pinstance->ioa_state = 135;

   if (pinstance->ioa_bringdown)
    pmcraid_notify_ioastate(pinstance,
     PMC_DEVICE_EVENT_SHUTDOWN_FAILED);
   else
    pmcraid_notify_ioastate(pinstance,
      PMC_DEVICE_EVENT_RESET_FAILED);
   reset_complete = 1;
   break;
  }




  if (pci_restore_state(pinstance->pdev)) {
   pmcraid_info("config-space error resetting again\n");
   pinstance->ioa_state = 131;
   pmcraid_reset_alert(cmd);
   break;
  }


  pmcraid_fail_outstanding_cmds(pinstance);


  if (pinstance->ioa_unit_check) {
   pmcraid_info("unit check is active\n");
   pinstance->ioa_unit_check = 0;
   pmcraid_get_dump(pinstance);
   pinstance->ioa_reset_attempts--;
   pinstance->ioa_state = 131;
   pmcraid_reset_alert(cmd);
   break;
  }





  if (pinstance->ioa_bringdown) {
   pmcraid_info("bringing down the adapter\n");
   pinstance->ioa_shutdown_type = SHUTDOWN_NONE;
   pinstance->ioa_bringdown = 0;
   pinstance->ioa_state = 128;
   pmcraid_notify_ioastate(pinstance,
     PMC_DEVICE_EVENT_SHUTDOWN_SUCCESS);
   reset_complete = 1;
  } else {




   if (pmcraid_reset_enable_ioa(pinstance)) {
    pinstance->ioa_state = 133;
    pmcraid_info("bringing up the adapter\n");
    pmcraid_reinit_cmdblk(cmd);
    pmcraid_identify_hrrq(cmd);
   } else {
    pinstance->ioa_state = 130;
    pmcraid_soft_reset(cmd);
   }
  }
  break;

 case 130:



  pmcraid_info("In softreset proceeding with bring-up\n");
  pinstance->ioa_state = 133;





  pmcraid_identify_hrrq(cmd);
  break;

 case 133:



  pinstance->ioa_state = 129;
  reset_complete = 1;
  break;

 case 129:
 default:





  if (pinstance->ioa_shutdown_type == SHUTDOWN_NONE &&
      pinstance->force_ioa_reset == 0) {
   pmcraid_notify_ioastate(pinstance,
      PMC_DEVICE_EVENT_RESET_SUCCESS);
   reset_complete = 1;
  } else {
   if (pinstance->ioa_shutdown_type != SHUTDOWN_NONE)
    pinstance->ioa_state = 134;
   pmcraid_reinit_cmdblk(cmd);
   pmcraid_unregister_hcams(cmd);
  }
  break;
 }






 if (reset_complete) {
  pinstance->ioa_reset_in_progress = 0;
  pinstance->ioa_reset_attempts = 0;
  pinstance->reset_cmd = ((void*)0);
  pinstance->ioa_shutdown_type = SHUTDOWN_NONE;
  pinstance->ioa_bringdown = 0;
  pmcraid_return_cmd(cmd);




  if (pinstance->ioa_state == 129)
   pmcraid_register_hcams(pinstance);

  wake_up_all(&pinstance->reset_wait_q);
 }

 return;
}
