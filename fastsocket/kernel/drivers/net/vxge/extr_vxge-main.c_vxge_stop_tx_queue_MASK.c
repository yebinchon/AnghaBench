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
struct vxge_fifo {scalar_t__ tx_steering_type; int /*<<< orphan*/  queue_state; int /*<<< orphan*/  driver_id; struct net_device* ndev; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TX_MULTIQ_STEERING ; 
 int /*<<< orphan*/  VPATH_QUEUE_STOP ; 
 struct netdev_queue* FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*) ; 

void FUNC2(struct vxge_fifo *fifo)
{
	struct net_device *dev = fifo->ndev;

	struct netdev_queue *txq = NULL;
	if (fifo->tx_steering_type == TX_MULTIQ_STEERING)
		txq = FUNC0(dev, fifo->driver_id);
	else {
		txq = FUNC0(dev, 0);
		fifo->queue_state = VPATH_QUEUE_STOP;
	}

	FUNC1(txq);
}