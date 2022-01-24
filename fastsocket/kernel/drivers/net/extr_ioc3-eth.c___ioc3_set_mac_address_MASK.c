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
struct net_device {int* dev_addr; } ;
struct ioc3_private {struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ioc3_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct ioc3_private *ip = FUNC2(dev);
	struct ioc3 *ioc3 = ip->regs;

	FUNC0((dev->dev_addr[5] <<  8) | dev->dev_addr[4]);
	FUNC1((dev->dev_addr[3] << 24) | (dev->dev_addr[2] << 16) |
	              (dev->dev_addr[1] <<  8) | dev->dev_addr[0]);
}