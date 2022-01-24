#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; } ;
struct cpl_tx_pkt {int dummy; } ;
struct TYPE_2__ {scalar_t__ gso_size; scalar_t__ nr_frags; } ;

/* Variables and functions */
 int WR_LEN ; 
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (struct sk_buff const*) ; 

__attribute__((used)) static inline unsigned int FUNC3(const struct sk_buff *skb)
{
	unsigned int flits;

	if (skb->len <= WR_LEN - sizeof(struct cpl_tx_pkt))
		return 1;

	flits = FUNC1(FUNC2(skb)->nr_frags + 1) + 2;
	if (FUNC2(skb)->gso_size)
		flits++;
	return FUNC0(flits);
}