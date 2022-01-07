
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_rsvd_page {int dummy; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int (* request_partition_activation ) (struct xpc_rsvd_page*,unsigned long,int) ;} ;


 int DBUG_ON (int) ;
 int GFP_KERNEL ;
 scalar_t__ XPC_RP_HEADER_SIZE ;
 int dev_dbg (int ,char*,int,...) ;
 int is_shub2 () ;
 scalar_t__ is_uv () ;
 int kfree (void*) ;
 unsigned long* kzalloc (int,int ) ;
 int stub1 (struct xpc_rsvd_page*,unsigned long,int) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 int xpLocalPartid ;
 int xpSuccess ;
 int xp_region_size ;
 TYPE_1__ xpc_arch_ops ;
 scalar_t__ xpc_exiting ;
 int xpc_get_remote_rp (int,unsigned long*,struct xpc_rsvd_page*,unsigned long*) ;
 struct xpc_rsvd_page* xpc_kmalloc_cacheline_aligned (scalar_t__,int ,void**) ;
 unsigned long* xpc_mach_nasids ;
 scalar_t__ xpc_nasid_mask_nbytes ;
 int xpc_nasid_mask_nlongs ;
 int xpc_part ;
 unsigned long* xpc_part_nasids ;
 scalar_t__ xpc_rsvd_page ;

void
xpc_discovery(void)
{
 void *remote_rp_base;
 struct xpc_rsvd_page *remote_rp;
 unsigned long remote_rp_pa;
 int region;
 int region_size;
 int max_regions;
 int nasid;
 struct xpc_rsvd_page *rp;
 unsigned long *discovered_nasids;
 enum xp_retval ret;

 remote_rp = xpc_kmalloc_cacheline_aligned(XPC_RP_HEADER_SIZE +
        xpc_nasid_mask_nbytes,
        GFP_KERNEL, &remote_rp_base);
 if (remote_rp == ((void*)0))
  return;

 discovered_nasids = kzalloc(sizeof(long) * xpc_nasid_mask_nlongs,
        GFP_KERNEL);
 if (discovered_nasids == ((void*)0)) {
  kfree(remote_rp_base);
  return;
 }

 rp = (struct xpc_rsvd_page *)xpc_rsvd_page;






 region_size = xp_region_size;

 if (is_uv())
  max_regions = 256;
 else {
  max_regions = 64;

  switch (region_size) {
  case 128:
   max_regions *= 2;
  case 64:
   max_regions *= 2;
  case 32:
   max_regions *= 2;
   region_size = 16;
   DBUG_ON(!is_shub2());
  }
 }

 for (region = 0; region < max_regions; region++) {

  if (xpc_exiting)
   break;

  dev_dbg(xpc_part, "searching region %d\n", region);

  for (nasid = (region * region_size * 2);
       nasid < ((region + 1) * region_size * 2); nasid += 2) {

   if (xpc_exiting)
    break;

   dev_dbg(xpc_part, "checking nasid %d\n", nasid);

   if (test_bit(nasid / 2, xpc_part_nasids)) {
    dev_dbg(xpc_part, "PROM indicates Nasid %d is "
     "part of the local partition; skipping "
     "region\n", nasid);
    break;
   }

   if (!(test_bit(nasid / 2, xpc_mach_nasids))) {
    dev_dbg(xpc_part, "PROM indicates Nasid %d was "
     "not on Numa-Link network at reset\n",
     nasid);
    continue;
   }

   if (test_bit(nasid / 2, discovered_nasids)) {
    dev_dbg(xpc_part, "Nasid %d is part of a "
     "partition which was previously "
     "discovered\n", nasid);
    continue;
   }



   ret = xpc_get_remote_rp(nasid, discovered_nasids,
      remote_rp, &remote_rp_pa);
   if (ret != xpSuccess) {
    dev_dbg(xpc_part, "unable to get reserved page "
     "from nasid %d, reason=%d\n", nasid,
     ret);

    if (ret == xpLocalPartid)
     break;

    continue;
   }

   xpc_arch_ops.request_partition_activation(remote_rp,
        remote_rp_pa, nasid);
  }
 }

 kfree(discovered_nasids);
 kfree(remote_rp_base);
}
