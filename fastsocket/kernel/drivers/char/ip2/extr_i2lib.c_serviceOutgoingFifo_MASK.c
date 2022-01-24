#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* i2eBordStrPtr ;
struct TYPE_7__ {int /*<<< orphan*/  i2eWaitingForEmptyFifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(i2eBordStrPtr pB)
{
	// If we aren't currently waiting for the board to empty our fifo, service
	// everything that is pending, in priority order (especially, Bypass before
	// Inline).
	if ( ! pB->i2eWaitingForEmptyFifo )
	{
		FUNC1(pB);
		FUNC0(pB);
		FUNC2(pB);

		FUNC3(pB);
	} 
}