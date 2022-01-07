
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_rsvd_page {int SAL_version; int SAL_partid; int max_npartitions; int SAL_nasids_size; unsigned long ts_jiffies; int version; } ;
struct TYPE_2__ {int (* setup_rsvd_page ) (struct xpc_rsvd_page*) ;} ;


 int BITS_PER_BYTE ;
 int BITS_TO_LONGS (int) ;
 int BUG_ON (int) ;
 int EINVAL ;
 int ESRCH ;
 int XPC_RP_MACH_NASIDS (struct xpc_rsvd_page*) ;
 int XPC_RP_PART_NASIDS (struct xpc_rsvd_page*) ;
 int XPC_RP_VERSION ;
 scalar_t__ __va (int ) ;
 int dev_err (int ,char*,...) ;
 unsigned long jiffies ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_processor_id () ;
 int stub1 (struct xpc_rsvd_page*) ;
 int xp_cpu_to_nasid (int ) ;
 int xp_max_npartitions ;
 int xp_partition_id ;
 int xp_socket_pa (unsigned long) ;
 TYPE_1__ xpc_arch_ops ;
 unsigned long xpc_get_rsvd_page_pa (int ) ;
 int xpc_mach_nasids ;
 int xpc_nasid_mask_nbytes ;
 int xpc_nasid_mask_nlongs ;
 int xpc_part ;
 int xpc_part_nasids ;
 struct xpc_rsvd_page* xpc_rsvd_page ;

int
xpc_setup_rsvd_page(void)
{
 int ret;
 struct xpc_rsvd_page *rp;
 unsigned long rp_pa;
 unsigned long new_ts_jiffies;



 preempt_disable();
 rp_pa = xpc_get_rsvd_page_pa(xp_cpu_to_nasid(smp_processor_id()));
 preempt_enable();
 if (rp_pa == 0) {
  dev_err(xpc_part, "SAL failed to locate the reserved page\n");
  return -ESRCH;
 }
 rp = (struct xpc_rsvd_page *)__va(xp_socket_pa(rp_pa));

 if (rp->SAL_version < 3) {

  rp->SAL_partid &= 0xff;
 }
 BUG_ON(rp->SAL_partid != xp_partition_id);

 if (rp->SAL_partid < 0 || rp->SAL_partid >= xp_max_npartitions) {
  dev_err(xpc_part, "the reserved page's partid of %d is outside "
   "supported range (< 0 || >= %d)\n", rp->SAL_partid,
   xp_max_npartitions);
  return -EINVAL;
 }

 rp->version = XPC_RP_VERSION;
 rp->max_npartitions = xp_max_npartitions;


 if (rp->SAL_version == 1) {

  rp->SAL_nasids_size = 128;
 }
 xpc_nasid_mask_nbytes = rp->SAL_nasids_size;
 xpc_nasid_mask_nlongs = BITS_TO_LONGS(rp->SAL_nasids_size *
           BITS_PER_BYTE);


 xpc_part_nasids = XPC_RP_PART_NASIDS(rp);
 xpc_mach_nasids = XPC_RP_MACH_NASIDS(rp);

 ret = xpc_arch_ops.setup_rsvd_page(rp);
 if (ret != 0)
  return ret;






 new_ts_jiffies = jiffies;
 if (new_ts_jiffies == 0 || new_ts_jiffies == rp->ts_jiffies)
  new_ts_jiffies++;
 rp->ts_jiffies = new_ts_jiffies;

 xpc_rsvd_page = rp;
 return 0;
}
