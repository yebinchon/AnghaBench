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
struct net_device {scalar_t__ base_addr; } ;

/* Variables and functions */
 scalar_t__ BCMREG ; 
 unsigned char BCMREG_RAMEN ; 
 unsigned char BCMREG_RAMWIN ; 
 unsigned char BCMREG_RESET ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	unsigned char bcmval;

	/* read original board control value */

	bcmval = FUNC0(dev->base_addr + BCMREG);

	/* set reset bit for a while */

	bcmval |= BCMREG_RESET;
	FUNC1(bcmval, dev->base_addr + BCMREG);
	FUNC2(10);
	bcmval &= ~BCMREG_RESET;
	FUNC1(bcmval, dev->base_addr + BCMREG);

	/* switch over to RAM again */

	bcmval |= BCMREG_RAMEN | BCMREG_RAMWIN;
	FUNC1(bcmval, dev->base_addr + BCMREG);
}