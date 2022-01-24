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
struct netdev_queue {int /*<<< orphan*/  _xmit_lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  hostap_netdev_xmit_lock_key ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct net_device *dev,
					 struct netdev_queue *txq,
					 void *_unused)
{
	FUNC0(&txq->_xmit_lock,
			  &hostap_netdev_xmit_lock_key);
}