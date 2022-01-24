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
struct mac_info {struct fifo_info* fifos; } ;
struct config_param {int tx_fifo_num; } ;
struct s2io_nic {scalar_t__ vlgrp; struct mac_info mac_control; struct config_param config; } ;
struct net_device {int dummy; } ;
struct fifo_info {int /*<<< orphan*/  tx_lock; } ;

/* Variables and functions */
 int MAX_TX_FIFOS ; 
 struct s2io_nic* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned short,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, unsigned short vid)
{
	int i;
	struct s2io_nic *nic = FUNC0(dev);
	unsigned long flags[MAX_TX_FIFOS];
	struct config_param *config = &nic->config;
	struct mac_info *mac_control = &nic->mac_control;

	for (i = 0; i < config->tx_fifo_num; i++) {
		struct fifo_info *fifo = &mac_control->fifos[i];

		FUNC1(&fifo->tx_lock, flags[i]);
	}

	if (nic->vlgrp)
		FUNC3(nic->vlgrp, vid, NULL);

	for (i = config->tx_fifo_num - 1; i >= 0; i--) {
		struct fifo_info *fifo = &mac_control->fifos[i];

		FUNC2(&fifo->tx_lock, flags[i]);
	}
}