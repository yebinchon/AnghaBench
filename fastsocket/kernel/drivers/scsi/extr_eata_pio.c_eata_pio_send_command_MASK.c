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

/* Variables and functions */
 scalar_t__ HA_CTRLREG ; 
 unsigned char HA_CTRL_8HEADS ; 
 scalar_t__ HA_RSTATUS ; 
 int HA_SBUSY ; 
 scalar_t__ HA_WCOMMAND ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 

__attribute__((used)) static inline unsigned int FUNC2(unsigned long base, unsigned char command)
{
	unsigned int loop = 50;

	while (FUNC0(base + HA_RSTATUS) & HA_SBUSY)
		if (--loop == 0)
			return 1;

	/* Enable interrupts for HBA.  It is not the best way to do it at this
	 * place, but I hope that it doesn't interfere with the IDE driver 
	 * initialization this way */

	FUNC1(HA_CTRL_8HEADS, base + HA_CTRLREG);

	FUNC1(command, base + HA_WCOMMAND);
	return 0;
}