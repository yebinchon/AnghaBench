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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int AUXIO_AUX1_MASK ; 
 int /*<<< orphan*/  auxio_lock ; 
 scalar_t__ auxio_register ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(u8 bits_on, u8 bits_off, int ebus)
{
	if (auxio_register) {
		unsigned long flags;
		u8 regval, newval;

		FUNC3(&auxio_lock, flags);

		regval = (ebus ?
			  (u8) FUNC0(auxio_register) :
			  FUNC1(auxio_register));
		newval =  regval | bits_on;
		newval &= ~bits_off;
		if (!ebus)
			newval &= ~AUXIO_AUX1_MASK;
		if (ebus)
			FUNC5((u32) newval, auxio_register);
		else
			FUNC2(newval, auxio_register);
		
		FUNC4(&auxio_lock, flags);
	}
}