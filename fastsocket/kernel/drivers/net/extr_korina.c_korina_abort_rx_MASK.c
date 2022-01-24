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
struct korina_private {int /*<<< orphan*/  rx_dma_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct korina_private* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct korina_private *lp = FUNC1(dev);

	FUNC0(dev, lp->rx_dma_regs);
}