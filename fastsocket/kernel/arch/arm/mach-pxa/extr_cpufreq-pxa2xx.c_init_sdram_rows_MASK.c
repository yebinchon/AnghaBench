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
typedef  int uint32_t ;

/* Variables and functions */
 int MDCNFG ; 
 int MDCNFG_DE0 ; 
 int MDCNFG_DE1 ; 
 int MDCNFG_DE2 ; 
 int MDCNFG_DE3 ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (unsigned int,unsigned int) ; 
 int sdram_rows ; 

__attribute__((used)) static void FUNC3(void)
{
	uint32_t mdcnfg = MDCNFG;
	unsigned int drac2 = 0, drac0 = 0;

	if (mdcnfg & (MDCNFG_DE2 | MDCNFG_DE3))
		drac2 = FUNC1(mdcnfg);

	if (mdcnfg & (MDCNFG_DE0 | MDCNFG_DE1))
		drac0 = FUNC0(mdcnfg);

	sdram_rows = 1 << (11 + FUNC2(drac0, drac2));
}