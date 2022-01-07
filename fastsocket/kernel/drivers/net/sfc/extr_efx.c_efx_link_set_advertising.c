
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int link_advertising; int wanted_fc; } ;


 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Pause ;
 int EFX_FC_RX ;
 int EFX_FC_TX ;

void efx_link_set_advertising(struct efx_nic *efx, u32 advertising)
{
 efx->link_advertising = advertising;
 if (advertising) {
  if (advertising & ADVERTISED_Pause)
   efx->wanted_fc |= (EFX_FC_TX | EFX_FC_RX);
  else
   efx->wanted_fc &= ~(EFX_FC_TX | EFX_FC_RX);
  if (advertising & ADVERTISED_Asym_Pause)
   efx->wanted_fc ^= EFX_FC_TX;
 }
}
