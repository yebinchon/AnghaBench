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
typedef  int u16 ;
struct cas {int dummy; } ;

/* Variables and functions */
 int BMCR_PDOWN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct cas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct cas *cp)
{
	u16 ctl = FUNC0(cp, MII_BMCR);

	if (ctl & BMCR_PDOWN)
		return;
	ctl |= BMCR_PDOWN;
	FUNC1(cp, MII_BMCR, ctl);
}