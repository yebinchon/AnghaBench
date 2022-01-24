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
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ XIRCREG2_GPR2 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(unsigned int ioaddr, unsigned data)
{
  #if 1
    if (data) {
	FUNC0(XIRCREG2_GPR2, 0x0c|2|0); /* set MDIO */
	FUNC2(1);
	FUNC0(XIRCREG2_GPR2, 0x0c|2|1); /* and drive MDCK high */
	FUNC2(1);
    } else {
	FUNC0(XIRCREG2_GPR2, 0x0c|0|0); /* clear MDIO */
	FUNC2(1);
	FUNC0(XIRCREG2_GPR2, 0x0c|0|1); /* and drive MDCK high */
	FUNC2(1);
    }
  #else
    if (data) {
	PutWord(XIRCREG2_GPR2-1, 0x0e0e);
	udelay(1);
	PutWord(XIRCREG2_GPR2-1, 0x0f0f);
	udelay(1);
    } else {
	PutWord(XIRCREG2_GPR2-1, 0x0c0c);
	udelay(1);
	PutWord(XIRCREG2_GPR2-1, 0x0d0d);
	udelay(1);
    }
  #endif
}