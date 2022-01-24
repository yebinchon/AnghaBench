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
typedef  int u32 ;
struct nouveau_bitfield {int name; int mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

void
FUNC1(const struct nouveau_bitfield *bf, u32 value)
{
	while (bf->name) {
		if (value & bf->mask) {
			FUNC0(" %s", bf->name);
			value &= ~bf->mask;
		}

		bf++;
	}

	if (value)
		FUNC0(" (unknown bits 0x%08x)", value);
}