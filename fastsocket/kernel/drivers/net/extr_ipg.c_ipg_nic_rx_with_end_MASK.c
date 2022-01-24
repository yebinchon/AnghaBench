#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct ipg_rx {int /*<<< orphan*/  rfs; } ;
struct ipg_jumbo {int current_size; TYPE_1__* skb; scalar_t__ found_start; } ;
struct ipg_nic_private {int rxsupport_size; struct sk_buff** rx_buff; struct ipg_jumbo jumbo; } ;
struct TYPE_5__ {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int IPG_RFS_RXFRAMELEN ; 
 scalar_t__ NORMAL_PACKET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev,
				struct ipg_nic_private *sp,
				struct ipg_rx *rxfd, unsigned entry)
{
	struct ipg_jumbo *jumbo = &sp->jumbo;

	/* 1: found error, 0 no error */
	if (FUNC2(dev) == NORMAL_PACKET) {
		struct sk_buff *skb = sp->rx_buff[entry];

		if (!skb)
			return;

		if (jumbo->found_start) {
			int framelen, endframelen;

			framelen = FUNC4(rxfd->rfs) & IPG_RFS_RXFRAMELEN;

			endframelen = framelen - jumbo->current_size;
			if (framelen > sp->rxsupport_size)
				FUNC0(jumbo->skb);
			else {
				FUNC5(FUNC7(jumbo->skb, endframelen),
				       skb->data, endframelen);

				jumbo->skb->protocol =
				    FUNC1(jumbo->skb, dev);

				jumbo->skb->ip_summed = CHECKSUM_NONE;
				FUNC6(jumbo->skb);
			}
		}

		jumbo->found_start = 0;
		jumbo->current_size = 0;
		jumbo->skb = NULL;

		FUNC3(dev);
	} else {
		FUNC0(jumbo->skb);
		jumbo->found_start = 0;
		jumbo->current_size = 0;
		jumbo->skb = NULL;
	}
}