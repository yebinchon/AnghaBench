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
struct sk_buff {scalar_t__ len; } ;
struct cpl_tx_pkt {int dummy; } ;
struct TYPE_2__ {scalar_t__ gso_size; scalar_t__ nr_frags; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (struct sk_buff const*) ; 
 int FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (struct sk_buff const*) ; 

__attribute__((used)) static inline unsigned int FUNC4(const struct sk_buff *skb)
{
	unsigned int flits;

	if (FUNC1(skb))
		return FUNC0(skb->len + sizeof(struct cpl_tx_pkt), 8);

	flits = FUNC2(FUNC3(skb)->nr_frags + 1) + 4;
	if (FUNC3(skb)->gso_size)
		flits += 2;
	return flits;
}