
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int SH1_IPI_ACCESS ;
 int SH2_IPI_ACCESS0 ;
 int dev_err (int ,char*,int) ;
 scalar_t__ is_shub1 () ;
 scalar_t__ is_shub2 () ;
 int sn_register_nofault_code (int ,int ,int ,int,int) ;
 int xp ;
 int xpSalError ;
 int xpSuccess ;
 scalar_t__ xp_error_PIOR ;
 scalar_t__ xp_nofault_PIOR ;
 int xp_nofault_PIOR_target ;

__attribute__((used)) static enum xp_retval
xp_register_nofault_code_sn2(void)
{
 int ret;
 u64 func_addr;
 u64 err_func_addr;

 func_addr = *(u64 *)xp_nofault_PIOR;
 err_func_addr = *(u64 *)xp_error_PIOR;
 ret = sn_register_nofault_code(func_addr, err_func_addr, err_func_addr,
           1, 1);
 if (ret != 0) {
  dev_err(xp, "can't register nofault code, error=%d\n", ret);
  return xpSalError;
 }




 if (is_shub1())
  xp_nofault_PIOR_target = SH1_IPI_ACCESS;
 else if (is_shub2())
  xp_nofault_PIOR_target = SH2_IPI_ACCESS0;

 return xpSuccess;
}
