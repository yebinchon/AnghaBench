
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int efx_init_lm87 (struct efx_nic*,int *,int ) ;
 int sfn4112f_hwmon_info ;
 int sfn4112f_lm87_regs ;

__attribute__((used)) static int sfn4112f_init(struct efx_nic *efx)
{
 return efx_init_lm87(efx, &sfn4112f_hwmon_info, sfn4112f_lm87_regs);
}
