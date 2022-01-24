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
struct w90p910_ether {scalar_t__ reg; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM0 ; 
 unsigned int CAM0EN ; 
 scalar_t__ REG_CAMEN ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 struct w90p910_ether* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct w90p910_ether *ether = FUNC2(dev);
	unsigned int val;

	FUNC3(dev, CAM0, dev->dev_addr);

	val = FUNC0(ether->reg + REG_CAMEN);
	val |= CAM0EN;
	FUNC1(val, ether->reg + REG_CAMEN);
}