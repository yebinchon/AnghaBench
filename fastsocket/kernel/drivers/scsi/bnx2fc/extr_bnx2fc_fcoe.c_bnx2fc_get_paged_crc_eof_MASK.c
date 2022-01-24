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

/* Variables and functions */
 int /*<<< orphan*/  bnx2fc_global ; 
 int /*<<< orphan*/  bnx2fc_global_lock ; 
 int FUNC0 (struct sk_buff*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct sk_buff *skb, int tlen)
{
	int rc;
	FUNC1(&bnx2fc_global_lock);
	rc = FUNC0(skb, tlen, &bnx2fc_global);
	FUNC2(&bnx2fc_global_lock);

	return rc;
}