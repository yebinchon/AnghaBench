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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XIRCREG2_GPR2 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(unsigned int ioaddr)
{
    FUNC0(XIRCREG2_GPR2, 0x04|0); /* drive MDCK low */
    FUNC1(1);
    FUNC0(XIRCREG2_GPR2, 0x04|1); /* and drive MDCK high */
    FUNC1(1);
}