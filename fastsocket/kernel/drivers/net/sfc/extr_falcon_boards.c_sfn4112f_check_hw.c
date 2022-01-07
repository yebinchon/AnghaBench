
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int efx_check_lm87 (struct efx_nic*,int) ;

__attribute__((used)) static int sfn4112f_check_hw(struct efx_nic *efx)
{

 return efx_check_lm87(efx, ~0x48);
}
