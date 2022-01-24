#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IRQ_MFP_FDC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int fdc_busy ; 
 int /*<<< orphan*/  fdc_wait ; 
 int /*<<< orphan*/  floppy_irq ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct request_queue * q)
{
 	unsigned long flags;

	FUNC0(("do_fd_request for pid %d\n",current->pid));
	while( fdc_busy ) FUNC6( &fdc_wait );
	fdc_busy = 1;
	FUNC7(floppy_irq, NULL);

	FUNC1( IRQ_MFP_FDC );
	FUNC4(flags);	/* The request function is called with ints
	local_irq_disable();		 * disabled... so must save the IPL for later */ 
	FUNC5();
	FUNC3(flags);
	FUNC2( IRQ_MFP_FDC );
}