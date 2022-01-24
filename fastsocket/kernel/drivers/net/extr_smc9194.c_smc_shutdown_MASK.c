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
 int /*<<< orphan*/  CTL_POWERDOWN ; 
 scalar_t__ INT_MASK ; 
 scalar_t__ RCR ; 
 int /*<<< orphan*/  RCR_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TCR ; 
 int /*<<< orphan*/  TCR_CLEAR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4( int ioaddr )
{
	/* no more interrupts for me */
	FUNC0( 2 );
	FUNC2( 0, ioaddr + INT_MASK );

	/* and tell the card to stay away from that nasty outside world */
	FUNC0( 0 );
	FUNC2( RCR_CLEAR, ioaddr + RCR );
	FUNC2( TCR_CLEAR, ioaddr + TCR );
#if 0
	/* finally, shut the chip down */
	SMC_SELECT_BANK( 1 );
	outw( inw( ioaddr + CONTROL ), CTL_POWERDOWN, ioaddr + CONTROL  );
#endif
}