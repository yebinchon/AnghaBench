
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_link_state {int speed; int up; } ;
struct efx_nic {int promiscuous; int reset_pending; struct efx_link_state link_state; } ;
typedef int efx_oword_t ;


 int ACCESS_ONCE (int ) ;
 int EFX_POPULATE_OWORD_5 (int ,int ,int,int ,int,int ,int ,int ,int,int ,int) ;
 scalar_t__ EFX_REV_FALCON_B0 ;
 int EFX_SET_OWORD_FIELD (int ,int ,int) ;
 int FRF_AB_MAC_BCAD_ACPT ;
 int FRF_AB_MAC_LINK_STATUS ;
 int FRF_AB_MAC_SPEED ;
 int FRF_AB_MAC_UC_PROM ;
 int FRF_AB_MAC_XOFF_VAL ;
 int FRF_AZ_RX_XOFF_MAC_EN ;
 int FRF_BB_TXFIFO_DRAIN_EN ;
 int FRF_BZ_RX_INGR_EN ;
 int FR_AB_MAC_CTRL ;
 int FR_AZ_RX_CFG ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 int falcon_push_multicast_hash (struct efx_nic*) ;

void falcon_reconfigure_mac_wrapper(struct efx_nic *efx)
{
 struct efx_link_state *link_state = &efx->link_state;
 efx_oword_t reg;
 int link_speed, isolate;

 isolate = !!ACCESS_ONCE(efx->reset_pending);

 switch (link_state->speed) {
 case 10000: link_speed = 3; break;
 case 1000: link_speed = 2; break;
 case 100: link_speed = 1; break;
 default: link_speed = 0; break;
 }




 EFX_POPULATE_OWORD_5(reg,
        FRF_AB_MAC_XOFF_VAL, 0xffff ,
        FRF_AB_MAC_BCAD_ACPT, 1,
        FRF_AB_MAC_UC_PROM, efx->promiscuous,
        FRF_AB_MAC_LINK_STATUS, 1,
        FRF_AB_MAC_SPEED, link_speed);


 if (efx_nic_rev(efx) >= EFX_REV_FALCON_B0) {
  EFX_SET_OWORD_FIELD(reg, FRF_BB_TXFIFO_DRAIN_EN,
        !link_state->up || isolate);
 }

 efx_writeo(efx, &reg, FR_AB_MAC_CTRL);


 falcon_push_multicast_hash(efx);

 efx_reado(efx, &reg, FR_AZ_RX_CFG);


 EFX_SET_OWORD_FIELD(reg, FRF_AZ_RX_XOFF_MAC_EN, 1);

 if (efx_nic_rev(efx) >= EFX_REV_FALCON_B0)
  EFX_SET_OWORD_FIELD(reg, FRF_BZ_RX_INGR_EN, !isolate);
 efx_writeo(efx, &reg, FR_AZ_RX_CFG);
}
