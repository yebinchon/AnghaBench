
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_partition_sn2 {int activate_IRQ_phys_cpuid; int activate_IRQ_nasid; int remote_amos_page_pa; } ;
struct TYPE_2__ {struct xpc_partition_sn2 sn2; } ;
struct xpc_partition {scalar_t__ act_state; int reason; TYPE_1__ sn; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int PAGE_SIZE ;
 int XPC_DEACTIVATE_PARTITION (struct xpc_partition*,int) ;
 int XPC_PARTID (struct xpc_partition*) ;
 scalar_t__ XPC_P_AS_DEACTIVATING ;
 int cnodeid_to_nasid (int ) ;
 int dev_dbg (int ,char*,int ) ;
 int dev_warn (int ,char*,int ) ;
 int msleep_interruptible (int) ;
 scalar_t__ sn_register_xp_addr_region (int ,int ,int) ;
 int xpPhysAddrRegFailed ;
 int xpRetry ;
 int xpSuccess ;
 int xpc_part ;
 int xpc_pull_remote_vars_part_sn2 (struct xpc_partition*) ;
 int xpc_send_activate_IRQ_sn2 (int ,int ,int ,int ) ;

__attribute__((used)) static enum xp_retval
xpc_make_first_contact_sn2(struct xpc_partition *part)
{
 struct xpc_partition_sn2 *part_sn2 = &part->sn.sn2;
 enum xp_retval ret;
 if (sn_register_xp_addr_region(part_sn2->remote_amos_page_pa,
           PAGE_SIZE, 1) < 0) {
  dev_warn(xpc_part, "xpc_activating(%d) failed to register "
    "xp_addr region\n", XPC_PARTID(part));

  ret = xpPhysAddrRegFailed;
  XPC_DEACTIVATE_PARTITION(part, ret);
  return ret;
 }





 xpc_send_activate_IRQ_sn2(part_sn2->remote_amos_page_pa,
      cnodeid_to_nasid(0),
      part_sn2->activate_IRQ_nasid,
      part_sn2->activate_IRQ_phys_cpuid);

 while ((ret = xpc_pull_remote_vars_part_sn2(part)) != xpSuccess) {
  if (ret != xpRetry) {
   XPC_DEACTIVATE_PARTITION(part, ret);
   return ret;
  }

  dev_dbg(xpc_part, "waiting to make first contact with "
   "partition %d\n", XPC_PARTID(part));


  (void)msleep_interruptible(250);

  if (part->act_state == XPC_P_AS_DEACTIVATING)
   return part->reason;
 }

 return xpSuccess;
}
