
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xpc_vars_sn2 {int * heartbeating_to_mask; int heartbeat; } ;
struct TYPE_4__ {unsigned long vars_pa; } ;
struct TYPE_5__ {TYPE_1__ sn2; } ;
struct xpc_rsvd_page {int version; unsigned long ts_jiffies; short SAL_partid; TYPE_2__ sn; } ;
struct xpc_partition_sn2 {scalar_t__ remote_vars_version; } ;
struct TYPE_6__ {struct xpc_partition_sn2 sn2; } ;
struct xpc_partition {scalar_t__ act_state; unsigned long remote_rp_ts_jiffies; scalar_t__ disengage_timeout; int remote_rp_version; int activate_IRQ_rcvd; TYPE_3__ sn; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int DBUG_ON (int) ;
 int XPC_DEACTIVATE_PARTITION (struct xpc_partition*,int) ;
 scalar_t__ XPC_P_AS_INACTIVE ;
 int dev_dbg (int ,char*,int,int,int ,int ,int ) ;
 int dev_warn (int ,char*,int,int) ;
 int xpOtherGoingDown ;
 int xpReactivating ;
 int xpSuccess ;
 int xpc_activate_partition (struct xpc_partition*) ;
 int xpc_get_remote_rp (int,int *,struct xpc_rsvd_page*,unsigned long*) ;
 int xpc_get_remote_vars_sn2 (unsigned long,struct xpc_vars_sn2*) ;
 int xpc_part ;
 int xpc_partition_deactivation_requested_sn2 (short) ;
 scalar_t__ xpc_partition_disengaged (struct xpc_partition*) ;
 int xpc_partition_engaged_sn2 (short) ;
 struct xpc_partition* xpc_partitions ;
 scalar_t__ xpc_remote_copy_buffer_sn2 ;
 int xpc_update_partition_info_sn2 (struct xpc_partition*,int,unsigned long*,unsigned long,unsigned long,struct xpc_vars_sn2*) ;

__attribute__((used)) static void
xpc_identify_activate_IRQ_req_sn2(int nasid)
{
 struct xpc_rsvd_page *remote_rp;
 struct xpc_vars_sn2 *remote_vars;
 unsigned long remote_rp_pa;
 unsigned long remote_vars_pa;
 int remote_rp_version;
 int reactivate = 0;
 unsigned long remote_rp_ts_jiffies = 0;
 short partid;
 struct xpc_partition *part;
 struct xpc_partition_sn2 *part_sn2;
 enum xp_retval ret;



 remote_rp = (struct xpc_rsvd_page *)xpc_remote_copy_buffer_sn2;

 ret = xpc_get_remote_rp(nasid, ((void*)0), remote_rp, &remote_rp_pa);
 if (ret != xpSuccess) {
  dev_warn(xpc_part, "unable to get reserved page from nasid %d, "
    "which sent interrupt, reason=%d\n", nasid, ret);
  return;
 }

 remote_vars_pa = remote_rp->sn.sn2.vars_pa;
 remote_rp_version = remote_rp->version;
 remote_rp_ts_jiffies = remote_rp->ts_jiffies;

 partid = remote_rp->SAL_partid;
 part = &xpc_partitions[partid];
 part_sn2 = &part->sn.sn2;



 remote_vars = (struct xpc_vars_sn2 *)xpc_remote_copy_buffer_sn2;

 ret = xpc_get_remote_vars_sn2(remote_vars_pa, remote_vars);
 if (ret != xpSuccess) {
  dev_warn(xpc_part, "unable to get XPC variables from nasid %d, "
    "which sent interrupt, reason=%d\n", nasid, ret);

  XPC_DEACTIVATE_PARTITION(part, ret);
  return;
 }

 part->activate_IRQ_rcvd++;

 dev_dbg(xpc_part, "partid for nasid %d is %d; IRQs = %d; HB = "
  "%lld:0x%lx\n", (int)nasid, (int)partid,
  part->activate_IRQ_rcvd,
  remote_vars->heartbeat, remote_vars->heartbeating_to_mask[0]);

 if (xpc_partition_disengaged(part) &&
     part->act_state == XPC_P_AS_INACTIVE) {

  xpc_update_partition_info_sn2(part, remote_rp_version,
           &remote_rp_ts_jiffies,
           remote_rp_pa, remote_vars_pa,
           remote_vars);

  if (xpc_partition_deactivation_requested_sn2(partid)) {




   return;
  }

  xpc_activate_partition(part);
  return;
 }

 DBUG_ON(part->remote_rp_version == 0);
 DBUG_ON(part_sn2->remote_vars_version == 0);

 if (remote_rp_ts_jiffies != part->remote_rp_ts_jiffies) {



  DBUG_ON(xpc_partition_engaged_sn2(partid));
  DBUG_ON(xpc_partition_deactivation_requested_sn2(partid));

  xpc_update_partition_info_sn2(part, remote_rp_version,
           &remote_rp_ts_jiffies,
           remote_rp_pa, remote_vars_pa,
           remote_vars);
  reactivate = 1;
 }

 if (part->disengage_timeout > 0 && !xpc_partition_disengaged(part)) {

  return;
 }

 if (reactivate)
  XPC_DEACTIVATE_PARTITION(part, xpReactivating);
 else if (xpc_partition_deactivation_requested_sn2(partid))
  XPC_DEACTIVATE_PARTITION(part, xpOtherGoingDown);
}
