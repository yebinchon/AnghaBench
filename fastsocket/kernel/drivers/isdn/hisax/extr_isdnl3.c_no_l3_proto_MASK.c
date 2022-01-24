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
struct TYPE_2__ {int /*<<< orphan*/  hardware; } ;
struct PStack {TYPE_1__ l1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC2(struct PStack *st, int pr, void *arg)
{
	struct sk_buff *skb = arg;

	FUNC0(st->l1.hardware, "L3", "no D protocol");
	if (skb) {
		FUNC1(skb);
	}
}