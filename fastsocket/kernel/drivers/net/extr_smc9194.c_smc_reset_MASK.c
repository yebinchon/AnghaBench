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
 scalar_t__ CONTROL ; 
 int CTL_AUTO_RELEASE ; 
 scalar_t__ INT_MASK ; 
 int MC_RESET ; 
 scalar_t__ MMU_CMD ; 
 scalar_t__ RCR ; 
 int RCR_CLEAR ; 
 int RCR_SOFTRESET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TCR ; 
 int TCR_CLEAR ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5( int ioaddr )
{
	/* This resets the registers mostly to defaults, but doesn't
	   affect EEPROM.  That seems unnecessary */
	FUNC1( 0 );
	FUNC4( RCR_SOFTRESET, ioaddr + RCR );

	/* this should pause enough for the chip to be happy */
	FUNC0( );

	/* Set the transmit and receive configuration registers to
	   default values */
	FUNC4( RCR_CLEAR, ioaddr + RCR );
	FUNC4( TCR_CLEAR, ioaddr + TCR );

	/* set the control register to automatically
	   release successfully transmitted packets, to make the best
	   use out of our limited memory */
	FUNC1( 1 );
	FUNC4( FUNC2( ioaddr + CONTROL ) | CTL_AUTO_RELEASE , ioaddr + CONTROL );

	/* Reset the MMU */
	FUNC1( 2 );
	FUNC4( MC_RESET, ioaddr + MMU_CMD );

	/* Note:  It doesn't seem that waiting for the MMU busy is needed here,
	   but this is a place where future chipsets _COULD_ break.  Be wary
 	   of issuing another MMU command right after this */

	FUNC3( 0, ioaddr + INT_MASK );
}