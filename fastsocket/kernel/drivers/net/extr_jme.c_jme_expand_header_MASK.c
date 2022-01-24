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
struct jme_adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ gso_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct jme_adapter *jme, struct sk_buff *skb)
{
	if (FUNC4(FUNC3(skb)->gso_size &&
			FUNC2(skb) &&
			FUNC1(skb, 0, 0, GFP_ATOMIC))) {
		FUNC0(skb);
		return -1;
	}

	return 0;
}