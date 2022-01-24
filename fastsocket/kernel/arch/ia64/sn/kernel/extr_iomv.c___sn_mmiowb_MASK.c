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
struct TYPE_2__ {unsigned long* pio_write_status_addr; unsigned long pio_write_status_val; } ;

/* Variables and functions */
 unsigned long volatile SH_PIO_WRITE_STATUS_PENDING_WRITE_COUNT_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* pda ; 

void FUNC1(void)
{
	volatile unsigned long *adr = pda->pio_write_status_addr;
	unsigned long val = pda->pio_write_status_val;

	while ((*adr & SH_PIO_WRITE_STATUS_PENDING_WRITE_COUNT_MASK) != val)
		FUNC0();
}