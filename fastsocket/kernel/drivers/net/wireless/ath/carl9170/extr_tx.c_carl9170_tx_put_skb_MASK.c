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
struct carl9170_tx_info {int /*<<< orphan*/  ref; } ;
struct TYPE_2__ {scalar_t__ rate_driver_data; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  carl9170_tx_release ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct sk_buff *skb)
{
	struct carl9170_tx_info *arinfo = (void *)
		(FUNC0(skb))->rate_driver_data;

	return FUNC1(&arinfo->ref, carl9170_tx_release);
}