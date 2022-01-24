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
struct t3cdev {int /*<<< orphan*/  lldev; } ;
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; } ;
struct cpl_trace_pkt {int dummy; } ;

/* Variables and functions */
 struct cpl_trace_pkt* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct t3cdev *dev, struct sk_buff *skb)
{
	struct cpl_trace_pkt *p = FUNC0(skb);

	skb->protocol = FUNC1(0xffff);
	skb->dev = dev->lldev;
	FUNC3(skb, sizeof(*p));
	FUNC4(skb);
	FUNC2(skb);
	return 0;
}