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
struct w90p910_ether {scalar_t__ reg; int /*<<< orphan*/  start_tx_ptr; int /*<<< orphan*/  start_rx_ptr; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ REG_RXDLSA ; 
 scalar_t__ REG_TXDLSA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct w90p910_ether* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct w90p910_ether *ether = FUNC1(dev);

	FUNC0(ether->start_rx_ptr, ether->reg + REG_RXDLSA);
	FUNC0(ether->start_tx_ptr, ether->reg + REG_TXDLSA);
}