#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {TYPE_1__** drv; int /*<<< orphan*/ * v110use; scalar_t__* v110; int /*<<< orphan*/ * ibytes; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rcv_waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* dev ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int,struct sk_buff*) ; 
 scalar_t__ FUNC5 (int,int,int,struct sk_buff*) ; 
 struct sk_buff* FUNC6 (scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(int di, int channel, struct sk_buff *skb)
{
	int i;

	if ((i = FUNC3(di, channel)) == -1) {
		FUNC2(skb);
		return;
	}
	/* Update statistics */
	dev->ibytes[i] += skb->len;
	
	/* First, try to deliver data to network-device */
	if (FUNC4(i, skb))
		return;

	/* V.110 handling
	 * makes sense for async streams only, so it is
	 * called after possible net-device delivery.
	 */
	if (dev->v110[i]) {
		FUNC1(&dev->v110use[i]);
		skb = FUNC6(dev->v110[i], skb);
		FUNC0(&dev->v110use[i]);
		if (!skb)
			return;
	}

	/* No network-device found, deliver to tty or raw-channel */
	if (skb->len) {
		if (FUNC5(i, di, channel, skb))
			return;
		FUNC7(&dev->drv[di]->rcv_waitq[channel]);
	} else
		FUNC2(skb);
}