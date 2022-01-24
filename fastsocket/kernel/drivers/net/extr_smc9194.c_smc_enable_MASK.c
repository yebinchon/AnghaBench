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
 scalar_t__ INT_MASK ; 
 scalar_t__ RCR ; 
 int /*<<< orphan*/  RCR_NORMAL ; 
 int /*<<< orphan*/  SMC_INTERRUPT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TCR ; 
 int /*<<< orphan*/  TCR_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3( int ioaddr )
{
	FUNC0( 0 );
	/* see the header file for options in TCR/RCR NORMAL*/
	FUNC2( TCR_NORMAL, ioaddr + TCR );
	FUNC2( RCR_NORMAL, ioaddr + RCR );

	/* now, enable interrupts */
	FUNC0( 2 );
	FUNC1( SMC_INTERRUPT_MASK, ioaddr + INT_MASK );
}