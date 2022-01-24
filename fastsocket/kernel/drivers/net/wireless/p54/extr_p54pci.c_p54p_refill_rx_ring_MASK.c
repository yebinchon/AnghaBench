#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct sk_buff {int dummy; } ;
struct p54p_ring_control {void** host_idx; } ;
struct TYPE_4__ {scalar_t__ rx_mtu; } ;
struct p54p_priv {TYPE_1__ common; TYPE_2__* pdev; struct p54p_ring_control* ring_control; } ;
struct p54p_desc {scalar_t__ flags; int /*<<< orphan*/  len; scalar_t__ device_addr; void* host_addr; } ;
struct ieee80211_hw {struct p54p_priv* priv; } ;
typedef  size_t dma_addr_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 void* FUNC1 (size_t) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 size_t FUNC5 (void*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,size_t) ; 
 size_t FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *dev,
	int ring_index, struct p54p_desc *ring, u32 ring_limit,
	struct sk_buff **rx_buf, u32 index)
{
	struct p54p_priv *priv = dev->priv;
	struct p54p_ring_control *ring_control = priv->ring_control;
	u32 limit, idx, i;

	idx = FUNC5(ring_control->host_idx[ring_index]);
	limit = idx;
	limit -= index;
	limit = ring_limit - limit;

	i = idx % ring_limit;
	while (limit-- > 1) {
		struct p54p_desc *desc = &ring[i];

		if (!desc->host_addr) {
			struct sk_buff *skb;
			dma_addr_t mapping;
			skb = FUNC2(priv->common.rx_mtu + 32);
			if (!skb)
				break;

			mapping = FUNC7(priv->pdev,
						 FUNC8(skb),
						 priv->common.rx_mtu + 32,
						 PCI_DMA_FROMDEVICE);

			if (FUNC6(priv->pdev, mapping)) {
				FUNC4(skb);
				FUNC3(&priv->pdev->dev,
					"RX DMA Mapping error\n");
				break;
			}

			desc->host_addr = FUNC1(mapping);
			desc->device_addr = 0;	// FIXME: necessary?
			desc->len = FUNC0(priv->common.rx_mtu + 32);
			desc->flags = 0;
			rx_buf[i] = skb;
		}

		i++;
		idx++;
		i %= ring_limit;
	}

	FUNC9();
	ring_control->host_idx[ring_index] = FUNC1(idx);
}