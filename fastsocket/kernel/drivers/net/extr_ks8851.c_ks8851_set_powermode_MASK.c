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
struct ks8851_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_PMECR ; 
 unsigned int PMECR_PM_MASK ; 
 unsigned int FUNC0 (struct ks8851_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks8851_net*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8851_net*,char*,unsigned int) ; 
 scalar_t__ FUNC3 (struct ks8851_net*) ; 

__attribute__((used)) static void FUNC4(struct ks8851_net *ks, unsigned pwrmode)
{
	unsigned pmecr;

	if (FUNC3(ks))
		FUNC2(ks, "setting power mode %d\n", pwrmode);

	pmecr = FUNC0(ks, KS_PMECR);
	pmecr &= ~PMECR_PM_MASK;
	pmecr |= pwrmode;

	FUNC1(ks, KS_PMECR, pmecr);
}