
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_oword_t ;


 int EBUSY ;
 scalar_t__ EFX_OWORD_FIELD (int ,int ) ;
 int FRF_AB_EE_SPI_HCMD_CMD_EN ;
 int FR_AB_EE_SPI_HCMD ;
 int efx_reado (struct efx_nic*,int *,int ) ;

__attribute__((used)) static int falcon_spi_poll(struct efx_nic *efx)
{
 efx_oword_t reg;
 efx_reado(efx, &reg, FR_AB_EE_SPI_HCMD);
 return EFX_OWORD_FIELD(reg, FRF_AB_EE_SPI_HCMD_CMD_EN) ? -EBUSY : 0;
}
