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
struct skb_frag_struct {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int nr_frags; struct skb_frag_struct* frags; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skb_frag_struct const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*) ; 
 TYPE_1__* FUNC3 (struct sk_buff const*) ; 

__attribute__((used)) static int FUNC4(const struct sk_buff *skb)
{
	int count = FUNC0(FUNC2(skb)) + 1;
	int i;

	for (i = 0; i < FUNC3(skb)->nr_frags; i++) {
		const struct skb_frag_struct *frag = &FUNC3(skb)->frags[i];

		count += FUNC0(FUNC1(frag));
	}
	return count;
}