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
typedef  unsigned int u32 ;

/* Variables and functions */
 scalar_t__ MCFSIM_IMR ; 
 scalar_t__ MCF_MBAR ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

void FUNC2(unsigned int mask)
{
	u32 imr;
	imr = FUNC0(MCF_MBAR + MCFSIM_IMR);
	imr |= mask;
	FUNC1(imr, MCF_MBAR + MCFSIM_IMR);
}