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
struct starfire_irqinfo {unsigned long hwmid; unsigned long* imap_slots; unsigned long* tregs; int upaid; struct starfire_irqinfo* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct starfire_irqinfo* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct starfire_irqinfo* sflist ; 
 scalar_t__ FUNC3 (unsigned long) ; 

void FUNC4(int upaid)
{
	struct starfire_irqinfo *p;
	unsigned long treg_base, hwmid, i;

	p = FUNC0(sizeof(*p), GFP_KERNEL);
	if (!p) {
		FUNC2("starfire_hookup: No memory, this is insane.\n");
		FUNC1();
	}
	treg_base = 0x100fc000000UL;
	hwmid = ((upaid & 0x3c) << 1) |
		((upaid & 0x40) >> 4) |
		(upaid & 0x3);
	p->hwmid = hwmid;
	treg_base += (hwmid << 33UL);
	treg_base += 0x200UL;
	for (i = 0; i < 32; i++) {
		p->imap_slots[i] = 0UL;
		p->tregs[i] = treg_base + (i * 0x10UL);
		/* Lets play it safe and not overwrite existing mappings */
		if (FUNC3(p->tregs[i]) != 0)
			p->imap_slots[i] = 0xdeadbeaf;
	}
	p->upaid = upaid;
	p->next = sflist;
	sflist = p;
}