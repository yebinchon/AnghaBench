
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
struct efx_channel {int channel; scalar_t__ irq_moderation; struct efx_nic* efx; } ;
typedef int efx_dword_t ;


 int BUILD_BUG_ON (int) ;
 int EFX_POPULATE_DWORD_2 (int ,int ,int ,int ,scalar_t__) ;
 int FFE_BB_TIMER_MODE_DIS ;
 int FFE_BB_TIMER_MODE_INT_HLDOFF ;
 int FRF_AB_TC_TIMER_MODE ;
 int FRF_AB_TC_TIMER_VAL ;
 scalar_t__ FR_AA_TIMER_COMMAND_KER ;
 scalar_t__ FR_BZ_TIMER_COMMAND_P0 ;
 int efx_writed_page_locked (struct efx_nic*,int *,scalar_t__,int ) ;

__attribute__((used)) static void falcon_push_irq_moderation(struct efx_channel *channel)
{
 efx_dword_t timer_cmd;
 struct efx_nic *efx = channel->efx;


 if (channel->irq_moderation) {
  EFX_POPULATE_DWORD_2(timer_cmd,
         FRF_AB_TC_TIMER_MODE,
         FFE_BB_TIMER_MODE_INT_HLDOFF,
         FRF_AB_TC_TIMER_VAL,
         channel->irq_moderation - 1);
 } else {
  EFX_POPULATE_DWORD_2(timer_cmd,
         FRF_AB_TC_TIMER_MODE,
         FFE_BB_TIMER_MODE_DIS,
         FRF_AB_TC_TIMER_VAL, 0);
 }
 BUILD_BUG_ON(FR_AA_TIMER_COMMAND_KER != FR_BZ_TIMER_COMMAND_P0);
 efx_writed_page_locked(efx, &timer_cmd, FR_BZ_TIMER_COMMAND_P0,
          channel->channel);
}
