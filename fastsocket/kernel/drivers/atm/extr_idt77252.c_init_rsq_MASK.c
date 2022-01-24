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
struct rsq_entry {scalar_t__ word_4; } ;
struct TYPE_2__ {unsigned long paddr; struct rsq_entry* base; struct rsq_entry* last; struct rsq_entry* next; } ;
struct idt77252_dev {int /*<<< orphan*/  name; TYPE_1__ rsq; int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  RSQSIZE ; 
 int RSQ_NUM_ENTRIES ; 
 int /*<<< orphan*/  SAR_REG_RSQB ; 
 int /*<<< orphan*/  SAR_REG_RSQH ; 
 int /*<<< orphan*/  SAR_REG_RSQT ; 
 int /*<<< orphan*/  FUNC1 (struct rsq_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rsq_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct idt77252_dev *card)
{
	struct rsq_entry *rsqe;

	card->rsq.base = FUNC2(card->pcidev, RSQSIZE,
					      &card->rsq.paddr);
	if (card->rsq.base == NULL) {
		FUNC3("%s: can't allocate RSQ.\n", card->name);
		return -1;
	}
	FUNC1(card->rsq.base, 0, RSQSIZE);

	card->rsq.last = card->rsq.base + RSQ_NUM_ENTRIES - 1;
	card->rsq.next = card->rsq.last;
	for (rsqe = card->rsq.base; rsqe <= card->rsq.last; rsqe++)
		rsqe->word_4 = 0;

	FUNC5((unsigned long) card->rsq.last - (unsigned long) card->rsq.base,
	       SAR_REG_RSQH);
	FUNC5(card->rsq.paddr, SAR_REG_RSQB);

	FUNC0("%s: RSQ base at 0x%lx (0x%x).\n", card->name,
		(unsigned long) card->rsq.base,
		FUNC4(SAR_REG_RSQB));
	FUNC0("%s: RSQ head = 0x%x, base = 0x%x, tail = 0x%x.\n",
		card->name,
		FUNC4(SAR_REG_RSQH),
		FUNC4(SAR_REG_RSQB),
		FUNC4(SAR_REG_RSQT));

	return 0;
}