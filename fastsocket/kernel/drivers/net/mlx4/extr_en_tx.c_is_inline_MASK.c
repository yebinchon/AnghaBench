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
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 void* FUNC0 (struct sk_buff*) ; 
 scalar_t__ inline_thold ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, void **pfrag)
{
	void *ptr;

	if (inline_thold && !FUNC1(skb) && skb->len <= inline_thold) {
		if (FUNC2(skb)->nr_frags == 1) {
			ptr = FUNC0(skb);
			if (FUNC3(!ptr))
				return 0;

			if (pfrag)
				*pfrag = ptr;

			return 1;
		} else if (FUNC3(FUNC2(skb)->nr_frags))
			return 0;
		else
			return 1;
	}

	return 0;
}