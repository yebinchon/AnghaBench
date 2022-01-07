
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_dword_t ;


 int EFX_PAGED_REG (unsigned int,unsigned int) ;
 int efx_writed (struct efx_nic*,int *,int ) ;

__attribute__((used)) static inline void _efx_writed_page(struct efx_nic *efx, efx_dword_t *value,
        unsigned int reg, unsigned int page)
{
 efx_writed(efx, value, EFX_PAGED_REG(page, reg));
}
