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
struct e100_serial {size_t line; } ;
struct TYPE_2__ {unsigned char dtr_mask; int* dtr_shadow; unsigned char* dtr_port; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct e100_serial*) ; 
 TYPE_1__* e100_modem_pins ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int,unsigned char) ; 

__attribute__((used)) static inline void
FUNC4(struct e100_serial *info, int set)
{
#ifndef CONFIG_SVINTO_SIM
	unsigned char mask = e100_modem_pins[info->line].dtr_mask;

#ifdef SERIAL_DEBUG_IO
	printk("ser%i dtr %i mask: 0x%02X\n", info->line, set, mask);
	printk("ser%i shadow before 0x%02X get: %i\n",
	       info->line, *e100_modem_pins[info->line].dtr_shadow,
	       E100_DTR_GET(info));
#endif
	/* DTR is active low */
	{
		unsigned long flags;

		FUNC2(flags);
		*e100_modem_pins[info->line].dtr_shadow &= ~mask;
		*e100_modem_pins[info->line].dtr_shadow |= (set ? 0 : mask);
		*e100_modem_pins[info->line].dtr_port = *e100_modem_pins[info->line].dtr_shadow;
		FUNC1(flags);
	}

#ifdef SERIAL_DEBUG_IO
	printk("ser%i shadow after 0x%02X get: %i\n",
	       info->line, *e100_modem_pins[info->line].dtr_shadow,
	       E100_DTR_GET(info));
#endif
#endif
}