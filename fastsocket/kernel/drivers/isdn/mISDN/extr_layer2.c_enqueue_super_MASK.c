#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct layer2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PH_DATA_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*) ; 
 scalar_t__ FUNC2 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static inline void
FUNC3(struct layer2 *l2, struct sk_buff *skb)
{
	if (FUNC2(l2, PH_DATA_REQ, FUNC1(l2), skb))
		FUNC0(skb);
}