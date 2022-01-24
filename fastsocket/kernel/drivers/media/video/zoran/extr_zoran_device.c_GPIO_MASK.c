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
struct zoran {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZR36057_GPPGCR1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3 (struct zoran *zr,
      int           bit,
      unsigned int  value)
{
	u32 reg;
	u32 mask;

	/* Make sure the bit number is legal
	 * A bit number of -1 (lacking) gives a mask of 0,
	 * making it harmless */
	mask = (1 << (24 + bit)) & 0xff000000;
	reg = FUNC0(ZR36057_GPPGCR1) & ~mask;
	if (value) {
		reg |= mask;
	}
	FUNC1(reg, ZR36057_GPPGCR1);
	FUNC2(1);
}