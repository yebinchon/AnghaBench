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
struct sk_buff {int dummy; } ;
struct aoedev {int /*<<< orphan*/  skbpool; } ;
struct TYPE_2__ {int /*<<< orphan*/  dataref; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ZLEN ; 
 scalar_t__ NSKBPOOLMAX ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *
FUNC6(struct aoedev *d)
{
	struct sk_buff *skb = FUNC3(&d->skbpool);

	if (skb && FUNC1(&FUNC5(skb)->dataref) == 1) {
		FUNC0(skb, &d->skbpool);
		return skb;
	}
	if (FUNC4(&d->skbpool) < NSKBPOOLMAX &&
	    (skb = FUNC2(ETH_ZLEN)))
		return skb;

	return NULL;
}