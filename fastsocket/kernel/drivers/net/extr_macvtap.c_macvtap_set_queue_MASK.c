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
struct macvtap_queue {struct file* file; int /*<<< orphan*/  sk; int /*<<< orphan*/  tap; int /*<<< orphan*/  vlan; } ;
struct macvlan_dev {struct file* file; int /*<<< orphan*/  sk; int /*<<< orphan*/  tap; int /*<<< orphan*/  vlan; } ;
struct file {struct macvtap_queue* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 struct macvtap_queue* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct macvtap_queue*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct file *file,
				struct macvtap_queue *q)
{
	struct macvlan_dev *vlan = FUNC0(dev);
	int err = -EBUSY;

	FUNC3();
	if (FUNC2(vlan->tap))
		goto out;

	err = 0;
	FUNC1(q->vlan, vlan);
	FUNC1(vlan->tap, q);
	FUNC5(&q->sk);

	q->file = file;
	file->private_data = q;

out:
	FUNC4();
	return err;
}