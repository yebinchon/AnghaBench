
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int sn_register_nofault_code (int ,int ,int ,int,int ) ;
 scalar_t__ xp_error_PIOR ;
 scalar_t__ xp_nofault_PIOR ;

__attribute__((used)) static void
xp_unregister_nofault_code_sn2(void)
{
 u64 func_addr = *(u64 *)xp_nofault_PIOR;
 u64 err_func_addr = *(u64 *)xp_error_PIOR;


 (void)sn_register_nofault_code(func_addr, err_func_addr,
           err_func_addr, 1, 0);
}
