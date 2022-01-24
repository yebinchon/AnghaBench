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
struct net_device {int /*<<< orphan*/  irq; struct airo_info* ml_priv; } ;
struct airo_info {int /*<<< orphan*/  airo_thread_task; int /*<<< orphan*/  jobs; int /*<<< orphan*/  flags; struct net_device* wifidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_RADIO_DOWN ; 
 int /*<<< orphan*/  JOB_DIE ; 
 int /*<<< orphan*/  FUNC0 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev) {
	struct airo_info *ai = dev->ml_priv;

	FUNC4(dev);

	if (ai->wifidev != dev) {
#ifdef POWER_ON_DOWN
		/* Shut power to the card. The idea is that the user can save
		 * power when he doesn't need the card with "ifconfig down".
		 * That's the method that is most friendly towards the network
		 * stack (i.e. the network stack won't try to broadcast
		 * anything on the interface and routes are gone. Jean II */
		set_bit(FLAG_RADIO_DOWN, &ai->flags);
		disable_MAC(ai, 1);
#endif
		FUNC1( ai );

		FUNC2(dev->irq, dev);

		FUNC5(JOB_DIE, &ai->jobs);
		FUNC3(ai->airo_thread_task);
	}
	return 0;
}