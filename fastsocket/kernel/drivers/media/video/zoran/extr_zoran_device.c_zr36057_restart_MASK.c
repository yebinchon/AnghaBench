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
struct zoran {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZR36057_GPPGCR1 ; 
 int /*<<< orphan*/  ZR36057_JPC ; 
 int /*<<< orphan*/  ZR36057_SPGPPCR ; 
 int ZR36057_SPGPPCR_SoftReset ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3 (struct zoran *zr)
{
	FUNC1(0, ZR36057_SPGPPCR);
	FUNC2(1);
	FUNC0(ZR36057_SPGPPCR_SoftReset, ZR36057_SPGPPCR);
	FUNC2(1);

	/* assert P_Reset */
	FUNC1(0, ZR36057_JPC);
	/* set up GPIO direction - all output */
	FUNC1(ZR36057_SPGPPCR_SoftReset | 0, ZR36057_SPGPPCR);

	/* set up GPIO pins and guest bus timing */
	FUNC1((0x81 << 24) | 0x8888, ZR36057_GPPGCR1);
}