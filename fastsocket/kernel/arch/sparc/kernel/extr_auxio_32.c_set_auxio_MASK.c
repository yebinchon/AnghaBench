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
 unsigned char AUXIO_ORMEIN ; 
 unsigned char AUXIO_ORMEIN4M ; 
 int /*<<< orphan*/  auxio_lock ; 
 int /*<<< orphan*/  auxio_register ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int sparc_cpu_model ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
#define  sun4c 130 
#define  sun4d 129 
#define  sun4m 128 

void FUNC5(unsigned char bits_on, unsigned char bits_off)
{
	unsigned char regval;
	unsigned long flags;
	FUNC3(&auxio_lock, flags);
	switch(sparc_cpu_model) {
	case sun4c:
		regval = FUNC1(auxio_register);
		FUNC2(((regval | bits_on) & ~bits_off) | AUXIO_ORMEIN,
			auxio_register);
		break;
	case sun4m:
		if(!auxio_register)
			break;     /* VME chassis sun4m, no auxio. */
		regval = FUNC1(auxio_register);
		FUNC2(((regval | bits_on) & ~bits_off) | AUXIO_ORMEIN4M,
			auxio_register);
		break;
	case sun4d:
		break;
	default:
		FUNC0("Can't set AUXIO register on this machine.");
	};
	FUNC4(&auxio_lock, flags);
}