
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {scalar_t__ act_state; int reason; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int DBUG_ON (int) ;
 size_t L1_CACHE_ALIGN (unsigned long const) ;
 int XPC_PARTID (struct xpc_partition*) ;
 scalar_t__ XPC_P_AS_DEACTIVATING ;
 int dev_dbg (int ,char*,int ,int) ;
 int xpSuccess ;
 int xp_pa (void*) ;
 int xp_remote_memcpy (int ,unsigned long const,size_t) ;
 int xpc_chan ;

__attribute__((used)) static enum xp_retval
xpc_pull_remote_cachelines_sn2(struct xpc_partition *part, void *dst,
          const unsigned long src_pa, size_t cnt)
{
 enum xp_retval ret;

 DBUG_ON(src_pa != L1_CACHE_ALIGN(src_pa));
 DBUG_ON((unsigned long)dst != L1_CACHE_ALIGN((unsigned long)dst));
 DBUG_ON(cnt != L1_CACHE_ALIGN(cnt));

 if (part->act_state == XPC_P_AS_DEACTIVATING)
  return part->reason;

 ret = xp_remote_memcpy(xp_pa(dst), src_pa, cnt);
 if (ret != xpSuccess) {
  dev_dbg(xpc_chan, "xp_remote_memcpy() from partition %d failed,"
   " ret=%d\n", XPC_PARTID(part), ret);
 }
 return ret;
}
