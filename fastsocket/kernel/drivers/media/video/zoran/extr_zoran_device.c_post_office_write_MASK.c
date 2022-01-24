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
struct zoran {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZR36057_POR ; 
 unsigned int ZR36057_POR_PODir ; 
 unsigned int ZR36057_POR_POTime ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct zoran*) ; 

int
FUNC2 (struct zoran *zr,
		   unsigned int  guest,
		   unsigned int  reg,
		   unsigned int  value)
{
	u32 por;

	por =
	    ZR36057_POR_PODir | ZR36057_POR_POTime | ((guest & 7) << 20) |
	    ((reg & 7) << 16) | (value & 0xFF);
	FUNC0(por, ZR36057_POR);

	return FUNC1(zr);
}