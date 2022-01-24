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
struct sk_buff {int cb; } ;
struct c4iw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rxq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  skb_work ; 
 int /*<<< orphan*/  workq ; 

__attribute__((used)) static int FUNC2(struct c4iw_dev *dev, struct sk_buff *skb)
{

	/*
	 * Save dev in the skb->cb area.
	 */
	*((struct c4iw_dev **) (skb->cb + sizeof(void *))) = dev;

	/*
	 * Queue the skb and schedule the worker thread.
	 */
	FUNC1(&rxq, skb);
	FUNC0(workq, &skb_work);
	return 0;
}