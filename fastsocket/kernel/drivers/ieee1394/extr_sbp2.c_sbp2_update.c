
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unit_directory {int device; } ;
struct sbp2_lu {int shost; int state; int ne; } ;


 int DID_BUS_BUSY ;
 int EBUSY ;
 int SBP2LU_STATE_RUNNING ;
 int SBP2_ERR (char*) ;
 int atomic_set (int *,int ) ;
 struct sbp2_lu* dev_get_drvdata (int *) ;
 scalar_t__ hpsb_node_entry_valid (int ) ;
 int sbp2_agent_reset (struct sbp2_lu*,int) ;
 scalar_t__ sbp2_login_device (struct sbp2_lu*) ;
 int sbp2_logout_device (struct sbp2_lu*) ;
 int sbp2_max_speed_and_size (struct sbp2_lu*) ;
 scalar_t__ sbp2_reconnect_device (struct sbp2_lu*) ;
 int sbp2_set_busy_timeout (struct sbp2_lu*) ;
 int sbp2scsi_complete_all_commands (struct sbp2_lu*,int ) ;
 int scsi_unblock_requests (int ) ;

__attribute__((used)) static int sbp2_update(struct unit_directory *ud)
{
 struct sbp2_lu *lu = dev_get_drvdata(&ud->device);

 if (sbp2_reconnect_device(lu) != 0) {





  if (!hpsb_node_entry_valid(lu->ne))
   return 0;





  sbp2_logout_device(lu);

  if (sbp2_login_device(lu) != 0) {
   if (!hpsb_node_entry_valid(lu->ne))
    return 0;


   SBP2_ERR("Failed to reconnect to sbp2 device!");
   return -EBUSY;
  }
 }

 sbp2_set_busy_timeout(lu);
 sbp2_agent_reset(lu, 1);
 sbp2_max_speed_and_size(lu);



 sbp2scsi_complete_all_commands(lu, DID_BUS_BUSY);



 if (hpsb_node_entry_valid(lu->ne)) {
  atomic_set(&lu->state, SBP2LU_STATE_RUNNING);
  scsi_unblock_requests(lu->shost);
 }
 return 0;
}
