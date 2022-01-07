
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
struct vxge_hw_ring_rxd_1 {int control_0; scalar_t__ host_control; } ;
struct __vxge_hw_channel {int dummy; } ;
struct __vxge_hw_ring {TYPE_2__* stats; int cmpl_cnt; struct __vxge_hw_channel channel; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
struct TYPE_3__ {scalar_t__ usage_cnt; scalar_t__ usage_max; } ;
struct TYPE_4__ {TYPE_1__ common_stats; } ;


 int VXGE_HW_INF_NO_MORE_COMPLETED_DESCRIPTORS ;
 int VXGE_HW_OK ;
 int VXGE_HW_RING_RXD_LIST_OWN_ADAPTER ;
 scalar_t__ VXGE_HW_RING_RXD_T_CODE_GET (int) ;
 scalar_t__ VXGE_HW_RING_RXD_T_CODE_UNUSED ;
 scalar_t__ VXGE_HW_RING_T_CODE_FRM_DROP ;
 int vxge_assert (int) ;
 int vxge_hw_channel_dtr_complete (struct __vxge_hw_channel*) ;
 int vxge_hw_channel_dtr_try_complete (struct __vxge_hw_channel*,void**) ;

enum vxge_hw_status vxge_hw_ring_rxd_next_completed(
 struct __vxge_hw_ring *ring, void **rxdh, u8 *t_code)
{
 struct __vxge_hw_channel *channel;
 struct vxge_hw_ring_rxd_1 *rxdp;
 enum vxge_hw_status status = VXGE_HW_OK;
 u64 control_0, own;

 channel = &ring->channel;

 vxge_hw_channel_dtr_try_complete(channel, rxdh);

 rxdp = (struct vxge_hw_ring_rxd_1 *)*rxdh;
 if (rxdp == ((void*)0)) {
  status = VXGE_HW_INF_NO_MORE_COMPLETED_DESCRIPTORS;
  goto exit;
 }

 control_0 = rxdp->control_0;
 own = control_0 & VXGE_HW_RING_RXD_LIST_OWN_ADAPTER;
 *t_code = (u8)VXGE_HW_RING_RXD_T_CODE_GET(control_0);


 if (!own || ((*t_code == VXGE_HW_RING_T_CODE_FRM_DROP) && own)) {

  vxge_assert(((struct vxge_hw_ring_rxd_1 *)rxdp)->host_control !=
    0);

  ++ring->cmpl_cnt;
  vxge_hw_channel_dtr_complete(channel);

  vxge_assert(*t_code != VXGE_HW_RING_RXD_T_CODE_UNUSED);

  ring->stats->common_stats.usage_cnt++;
  if (ring->stats->common_stats.usage_max <
    ring->stats->common_stats.usage_cnt)
   ring->stats->common_stats.usage_max =
    ring->stats->common_stats.usage_cnt;

  status = VXGE_HW_OK;
  goto exit;
 }



 *rxdh = ((void*)0);
 status = VXGE_HW_INF_NO_MORE_COMPLETED_DESCRIPTORS;
exit:
 return status;
}
