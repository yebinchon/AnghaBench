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
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned int ENRXBERR ; 
 unsigned int ENRXGD ; 
 unsigned int ENRXINTR ; 
 unsigned int ENTXABT ; 
 unsigned int ENTXBERR ; 
 unsigned int ENTXCP ; 
 unsigned int ENTXINTR ; 
 scalar_t__ REG_MIEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 struct w90p910_ether* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct w90p910_ether *ether = FUNC1(dev);
	unsigned int val;

	val = ENTXINTR | ENRXINTR | ENRXGD | ENTXCP;
	val |= ENTXBERR | ENRXBERR | ENTXABT;

	FUNC0(val, ether->reg + REG_MIEN);
}