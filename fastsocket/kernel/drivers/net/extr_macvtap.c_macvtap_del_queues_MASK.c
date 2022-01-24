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
struct net_device {int dummy; } ;
struct macvtap_queue {int /*<<< orphan*/  sk; int /*<<< orphan*/  vlan; } ;
struct macvlan_dev {int /*<<< orphan*/  tap; } ;

/* Variables and functions */
 struct macvlan_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct macvtap_queue* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct macvlan_dev *vlan = FUNC0(dev);
	struct macvtap_queue *q;

	q = FUNC2(vlan->tap);
	if (!q)
		return;

	FUNC1(vlan->tap, NULL);
	FUNC1(q->vlan, NULL);

	FUNC4();
	FUNC3(&q->sk);
}