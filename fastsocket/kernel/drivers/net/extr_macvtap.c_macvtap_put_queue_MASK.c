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
struct macvtap_queue {int /*<<< orphan*/  sk; int /*<<< orphan*/  vlan; } ;
struct macvlan_dev {int /*<<< orphan*/  tap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct macvlan_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct macvtap_queue *q)
{
	struct macvlan_dev *vlan;

	FUNC2();
	vlan = FUNC1(q->vlan);
	if (vlan) {
		FUNC0(vlan->tap, NULL);
		FUNC0(q->vlan, NULL);
		FUNC4(&q->sk);
	}

	FUNC3();

	FUNC5();
	FUNC4(&q->sk);
}