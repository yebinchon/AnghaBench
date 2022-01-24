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
typedef  scalar_t__ u16 ;
struct mgsl_struct {scalar_t__ bus_type; } ;

/* Variables and functions */
 int BIT0 ; 
 int BIT1 ; 
 int /*<<< orphan*/  HCR ; 
 int /*<<< orphan*/  IOCR ; 
 scalar_t__ MGSL_BUS_TYPE_PCI ; 
 int /*<<< orphan*/  TC0R ; 
 int FUNC0 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mgsl_struct*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2( struct mgsl_struct *info, u32 data_rate )
{
	u32 XtalSpeed;
	u16 Tc;

	if ( data_rate ) {
		if ( info->bus_type == MGSL_BUS_TYPE_PCI )
			XtalSpeed = 11059200;
		else
			XtalSpeed = 14745600;


		/* Tc = (Xtal/Speed) - 1 */
		/* If twice the remainder of (Xtal/Speed) is greater than Speed */
		/* then rounding up gives a more precise time constant. Instead */
		/* of rounding up and then subtracting 1 we just don't subtract */
		/* the one in this case. */


		Tc = (u16)(XtalSpeed/data_rate);
		if ( !(((XtalSpeed % data_rate) * 2) / data_rate) )
			Tc--;

		/* Write 16-bit Time Constant for BRG0 */
		FUNC1( info, TC0R, Tc );

		/*
		 * Hardware Configuration Register (HCR)
		 * Clear Bit 1, BRG0 mode = Continuous
		 * Set Bit 0 to enable BRG0.
		 */

		FUNC1( info, HCR, (u16)((FUNC0( info, HCR ) & ~BIT1) | BIT0) );

		/* Input/Output Control Reg, <2..0> = 100, Drive RxC pin with BRG0 */
		FUNC1( info, IOCR, (u16)((FUNC0(info, IOCR) & 0xfff8) | 0x0004) );
	} else {
		/* data rate == 0 so turn off BRG0 */
		FUNC1( info, HCR, (u16)(FUNC0( info, HCR ) & ~BIT0) );
	}

}