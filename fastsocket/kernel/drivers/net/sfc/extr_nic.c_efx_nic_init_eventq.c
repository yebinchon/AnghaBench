
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; int net_dev; } ;
struct TYPE_4__ {scalar_t__ index; scalar_t__ entries; int len; int addr; } ;
struct efx_channel {int channel; TYPE_2__ eventq; struct efx_nic* efx; } ;
typedef int efx_oword_t ;
struct TYPE_3__ {int (* push_irq_moderation ) (struct efx_channel*) ;int evq_ptr_tbl_base; } ;


 int EFX_POPULATE_OWORD_3 (int ,int ,int,int ,int ,int ,scalar_t__) ;
 scalar_t__ EFX_REV_SIENA_A0 ;
 scalar_t__ FFE_CZ_TIMER_MODE_DIS ;
 int FRF_AZ_EVQ_BUF_BASE_ID ;
 int FRF_AZ_EVQ_EN ;
 int FRF_AZ_EVQ_SIZE ;
 int FRF_CZ_HOST_NOTIFY_MODE ;
 int FRF_CZ_TIMER_MODE ;
 int FRF_CZ_TIMER_Q_EN ;
 int FR_BZ_TIMER_TBL ;
 int __ffs (scalar_t__) ;
 int efx_init_special_buffer (struct efx_nic*,TYPE_2__*) ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_writeo_table (struct efx_nic*,int *,int ,int ) ;
 int hw ;
 int memset (int ,int,int ) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ,scalar_t__,scalar_t__) ;
 int stub1 (struct efx_channel*) ;

void efx_nic_init_eventq(struct efx_channel *channel)
{
 efx_oword_t reg;
 struct efx_nic *efx = channel->efx;

 netif_dbg(efx, hw, efx->net_dev,
    "channel %d event queue in special buffers %d-%d\n",
    channel->channel, channel->eventq.index,
    channel->eventq.index + channel->eventq.entries - 1);

 if (efx_nic_rev(efx) >= EFX_REV_SIENA_A0) {
  EFX_POPULATE_OWORD_3(reg,
         FRF_CZ_TIMER_Q_EN, 1,
         FRF_CZ_HOST_NOTIFY_MODE, 0,
         FRF_CZ_TIMER_MODE, FFE_CZ_TIMER_MODE_DIS);
  efx_writeo_table(efx, &reg, FR_BZ_TIMER_TBL, channel->channel);
 }


 efx_init_special_buffer(efx, &channel->eventq);


 memset(channel->eventq.addr, 0xff, channel->eventq.len);


 EFX_POPULATE_OWORD_3(reg,
        FRF_AZ_EVQ_EN, 1,
        FRF_AZ_EVQ_SIZE, __ffs(channel->eventq.entries),
        FRF_AZ_EVQ_BUF_BASE_ID, channel->eventq.index);
 efx_writeo_table(efx, &reg, efx->type->evq_ptr_tbl_base,
    channel->channel);

 efx->type->push_irq_moderation(channel);
}
