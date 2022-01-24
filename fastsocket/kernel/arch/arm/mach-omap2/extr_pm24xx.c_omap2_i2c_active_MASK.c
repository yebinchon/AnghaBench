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
 int /*<<< orphan*/  CM_FCLKEN1 ; 
 int /*<<< orphan*/  CORE_MOD ; 
 int OMAP2420_EN_I2C1 ; 
 int OMAP2420_EN_I2C2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void)
{
	u32 l;

	l = FUNC0(CORE_MOD, CM_FCLKEN1);
	return l & (OMAP2420_EN_I2C2 | OMAP2420_EN_I2C1);
}