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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  EMMA2RH_PCI_INT ; 
 int /*<<< orphan*/  EMMA2RH_PCI_IWIN0_CTR ; 
 int FUNC0 (unsigned int) ; 
 int RMABORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC2(unsigned char bus_num,
						unsigned int devfn, int where)
{
	u32 config_win0;

	FUNC1(EMMA2RH_PCI_INT, ~RMABORT);
	if (bus_num == 0)
		/*
		 * Type 0 configuration
		 */
		config_win0 = (1 << (22 + FUNC0(devfn))) | (5 << 9);
	else
		/*
		 * Type 1 configuration
		 */
		config_win0 = (bus_num << 26) | (FUNC0(devfn) << 22) |
		    (1 << 15) | (5 << 9);

	FUNC1(EMMA2RH_PCI_IWIN0_CTR, config_win0);

	return 0;
}