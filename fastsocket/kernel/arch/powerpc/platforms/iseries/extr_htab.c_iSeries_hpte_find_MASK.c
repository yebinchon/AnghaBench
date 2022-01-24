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
struct hash_pte {int v; } ;

/* Variables and functions */
 int HPTE_V_VALID ; 
 long FUNC0 (struct hash_pte*,unsigned long) ; 

__attribute__((used)) static long FUNC1(unsigned long vpn)
{
	struct hash_pte hpte;
	long slot;

	/*
	 * The HvCallHpt_findValid interface is as follows:
	 * 0xffffffffffffffff : No entry found.
	 * 0x00000000xxxxxxxx : Entry found in primary group, slot x
	 * 0x80000000xxxxxxxx : Entry found in secondary group, slot x
	 */
	slot = FUNC0(&hpte, vpn);
	if (hpte.v & HPTE_V_VALID) {
		if (slot < 0) {
			slot &= 0x7fffffffffffffff;
			slot = -slot;
		}
	} else
		slot = -1;
	return slot;
}