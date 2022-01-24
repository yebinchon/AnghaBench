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
struct TYPE_2__ {unsigned char ri_mask; unsigned char* ri_shadow; unsigned char* ri_port; } ;

/* Variables and functions */
 TYPE_1__* e100_modem_pins ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static inline void
FUNC2(struct e100_serial *info, int set)
{
#ifndef CONFIG_SVINTO_SIM
	/* RI is active low */
	{
		unsigned char mask = e100_modem_pins[info->line].ri_mask;
		unsigned long flags;

		FUNC1(flags);
		*e100_modem_pins[info->line].ri_shadow &= ~mask;
		*e100_modem_pins[info->line].ri_shadow |= (set ? 0 : mask);
		*e100_modem_pins[info->line].ri_port = *e100_modem_pins[info->line].ri_shadow;
		FUNC0(flags);
	}
#endif
}