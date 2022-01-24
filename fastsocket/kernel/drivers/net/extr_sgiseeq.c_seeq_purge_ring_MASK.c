#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sgiseeq_private {TYPE_2__* rx_desc; TYPE_1__* tx_desc; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * skb; } ;
struct TYPE_3__ {int /*<<< orphan*/ * skb; } ;

/* Variables and functions */
 int SEEQ_RX_BUFFERS ; 
 int SEEQ_TX_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sgiseeq_private* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct sgiseeq_private *sp = FUNC1(dev);
	int i;

	/* clear tx ring. */
	for (i = 0; i < SEEQ_TX_BUFFERS; i++) {
		if (sp->tx_desc[i].skb) {
			FUNC0(sp->tx_desc[i].skb);
			sp->tx_desc[i].skb = NULL;
		}
	}

	/* And now the rx ring. */
	for (i = 0; i < SEEQ_RX_BUFFERS; i++) {
		if (sp->rx_desc[i].skb) {
			FUNC0(sp->rx_desc[i].skb);
			sp->rx_desc[i].skb = NULL;
		}
	}
}