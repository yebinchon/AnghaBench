
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_oword_t ;


 int efx_writeo (struct efx_nic*,int *,unsigned int) ;

__attribute__((used)) static inline void efx_writeo_table(struct efx_nic *efx, efx_oword_t *value,
          unsigned int reg, unsigned int index)
{
 efx_writeo(efx, value, reg + index * sizeof(efx_oword_t));
}
