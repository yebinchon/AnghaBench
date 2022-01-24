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
struct stmp3xxx_pinmux_bank {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int NR_BANKS ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 struct stmp3xxx_pinmux_bank* pinmux_banks ; 

__attribute__((used)) static inline struct stmp3xxx_pinmux_bank *
FUNC3(unsigned id, unsigned *bank, unsigned *pin)
{
	unsigned b, p;

	b = FUNC1(id);
	p = FUNC2(id);
	FUNC0(b >= NR_BANKS);
	if (bank)
		*bank = b;
	if (pin)
		*pin = p;
	return &pinmux_banks[b];
}