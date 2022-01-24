#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct TYPE_4__ {unsigned long* pio_write_status_addr; unsigned long pio_write_status_val; } ;
typedef  TYPE_1__ pda_t ;
struct TYPE_5__ {int /*<<< orphan*/  last_cpu; } ;

/* Variables and functions */
 unsigned long volatile SH_PIO_WRITE_STATUS_PENDING_WRITE_COUNT_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct task_struct *task)
{
	pda_t *last_pda = FUNC1(FUNC2(task)->last_cpu);
	volatile unsigned long *adr = last_pda->pio_write_status_addr;
	unsigned long val = last_pda->pio_write_status_val;

	/* Drain PIO writes from old CPU's Shub */
	while (FUNC3((*adr & SH_PIO_WRITE_STATUS_PENDING_WRITE_COUNT_MASK)
			!= val))
		FUNC0();
}