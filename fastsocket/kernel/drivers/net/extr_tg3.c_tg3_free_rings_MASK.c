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
struct tg3_napi {TYPE_1__* tx_buffers; int /*<<< orphan*/  prodring; } ;
struct tg3 {int irq_cnt; struct tg3_napi* napi; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ nr_frags; } ;
struct TYPE_3__ {struct sk_buff* skb; } ;

/* Variables and functions */
 int TG3_TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3_napi*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct tg3 *tp)
{
	int i, j;

	for (j = 0; j < tp->irq_cnt; j++) {
		struct tg3_napi *tnapi = &tp->napi[j];

		FUNC2(tp, &tnapi->prodring);

		if (!tnapi->tx_buffers)
			continue;

		for (i = 0; i < TG3_TX_RING_SIZE; i++) {
			struct sk_buff *skb = tnapi->tx_buffers[i].skb;

			if (!skb)
				continue;

			FUNC3(tnapi, i,
					 FUNC1(skb)->nr_frags - 1);

			FUNC0(skb);
		}
	}
}