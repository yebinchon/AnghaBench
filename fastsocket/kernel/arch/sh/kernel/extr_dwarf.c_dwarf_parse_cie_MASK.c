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
struct dwarf_cie {unsigned long length; unsigned long cie_pointer; char version; char* augmentation; unsigned int code_alignment_factor; unsigned int return_address_reg; char encoding; unsigned char* instructions_end; int /*<<< orphan*/  link; void* initial_instructions; int /*<<< orphan*/  flags; int /*<<< orphan*/  data_alignment_factor; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWARF_CIE_Z_AUGMENTATION ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (void*) ; 
 int /*<<< orphan*/  dwarf_cie_list ; 
 int /*<<< orphan*/  dwarf_cie_lock ; 
 int FUNC3 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (void*,unsigned int*) ; 
 struct dwarf_cie* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(void *entry, void *p, unsigned long len,
			   unsigned char *end)
{
	struct dwarf_cie *cie;
	unsigned long flags;
	int count;

	cie = FUNC5(sizeof(*cie), GFP_KERNEL);
	if (!cie)
		return -ENOMEM;

	cie->length = len;

	/*
	 * Record the offset into the .eh_frame section
	 * for this CIE. It allows this CIE to be
	 * quickly and easily looked up from the
	 * corresponding FDE.
	 */
	cie->cie_pointer = (unsigned long)entry;

	cie->version = *(char *)p++;
	FUNC1(cie->version != 1);

	cie->augmentation = p;
	p += FUNC9(cie->augmentation) + 1;

	count = FUNC4(p, &cie->code_alignment_factor);
	p += count;

	count = FUNC3(p, &cie->data_alignment_factor);
	p += count;

	/*
	 * Which column in the rule table contains the
	 * return address?
	 */
	if (cie->version == 1) {
		cie->return_address_reg = FUNC2(p);
		p++;
	} else {
		count = FUNC4(p, &cie->return_address_reg);
		p += count;
	}

	if (cie->augmentation[0] == 'z') {
		unsigned int length, count;
		cie->flags |= DWARF_CIE_Z_AUGMENTATION;

		count = FUNC4(p, &length);
		p += count;

		FUNC1((unsigned char *)p > end);

		cie->initial_instructions = p + length;
		cie->augmentation++;
	}

	while (*cie->augmentation) {
		/*
		 * "L" indicates a byte showing how the
		 * LSDA pointer is encoded. Skip it.
		 */
		if (*cie->augmentation == 'L') {
			p++;
			cie->augmentation++;
		} else if (*cie->augmentation == 'R') {
			/*
			 * "R" indicates a byte showing
			 * how FDE addresses are
			 * encoded.
			 */
			cie->encoding = *(char *)p++;
			cie->augmentation++;
		} else if (*cie->augmentation == 'P') {
			/*
			 * "R" indicates a personality
			 * routine in the CIE
			 * augmentation.
			 */
			FUNC0();
		} else if (*cie->augmentation == 'S') {
			FUNC0();
		} else {
			/*
			 * Unknown augmentation. Assume
			 * 'z' augmentation.
			 */
			p = cie->initial_instructions;
			FUNC1(!p);
			break;
		}
	}

	cie->initial_instructions = p;
	cie->instructions_end = end;

	/* Add to list */
	FUNC7(&dwarf_cie_lock, flags);
	FUNC6(&cie->link, &dwarf_cie_list);
	FUNC8(&dwarf_cie_lock, flags);

	return 0;
}