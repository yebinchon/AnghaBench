
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int SN_MEMPROT_ACCESS_CLASS_0 ;
 int dev_err (int ,char*,int) ;
 int sn_change_memprotect (unsigned long,unsigned long,int ,int *) ;
 int xp ;
 int xpSalError ;
 int xpSuccess ;

__attribute__((used)) static enum xp_retval
xp_restrict_memprotect_sn2(unsigned long phys_addr, unsigned long size)
{
 u64 nasid_array = 0;
 int ret;

 ret = sn_change_memprotect(phys_addr, size, SN_MEMPROT_ACCESS_CLASS_0,
       &nasid_array);
 if (ret != 0) {
  dev_err(xp, "sn_change_memprotect(,, "
   "SN_MEMPROT_ACCESS_CLASS_0,) failed ret=%d\n", ret);
  return xpSalError;
 }
 return xpSuccess;
}
