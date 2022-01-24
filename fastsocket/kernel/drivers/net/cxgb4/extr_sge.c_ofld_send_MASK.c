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
struct TYPE_2__ {int /*<<< orphan*/ * ofldtxq; int /*<<< orphan*/ * ctrlq; } ;
struct adapter {TYPE_1__ sge; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct adapter *adap, struct sk_buff *skb)
{
	unsigned int idx = FUNC3(skb);

	if (FUNC4(FUNC1(skb)))
		return FUNC0(&adap->sge.ctrlq[idx], skb);
	return FUNC2(&adap->sge.ofldtxq[idx], skb);
}