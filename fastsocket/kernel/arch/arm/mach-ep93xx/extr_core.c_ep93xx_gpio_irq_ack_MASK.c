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
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IRQ_TYPE_EDGE_BOTH ; 
 int IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * eoi_register_offset ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int* gpio_int_type2 ; 
 TYPE_1__* irq_desc ; 
 int FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(unsigned int irq)
{
	int line = FUNC3(irq);
	int port = line >> 3;
	int port_mask = 1 << (line & 7);

	if ((irq_desc[irq].status & IRQ_TYPE_SENSE_MASK) == IRQ_TYPE_EDGE_BOTH) {
		gpio_int_type2[port] ^= port_mask; /* switch edge direction */
		FUNC2(port);
	}

	FUNC1(port_mask, FUNC0(eoi_register_offset[port]));
}