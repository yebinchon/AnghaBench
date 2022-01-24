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
typedef  void* u32 ;
struct dwarf_fde {unsigned long length; unsigned long cie_pointer; unsigned char* end; int /*<<< orphan*/  link; void* instructions; struct dwarf_cie* cie; int /*<<< orphan*/  address_range; int /*<<< orphan*/  initial_location; } ;
struct dwarf_cie {int encoding; int flags; } ;

/* Variables and functions */
 int DWARF_CIE_Z_AUGMENTATION ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dwarf_fde_list ; 
 int /*<<< orphan*/  dwarf_fde_lock ; 
 struct dwarf_cie* FUNC0 (unsigned long) ; 
 int FUNC1 (void*,int /*<<< orphan*/ *) ; 
 int FUNC2 (void*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (void*,unsigned int*) ; 
 struct dwarf_fde* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(void *entry, u32 entry_type,
			   void *start, unsigned long len,
			   unsigned char *end)
{
	struct dwarf_fde *fde;
	struct dwarf_cie *cie;
	unsigned long flags;
	int count;
	void *p = start;

	fde = FUNC4(sizeof(*fde), GFP_KERNEL);
	if (!fde)
		return -ENOMEM;

	fde->length = len;

	/*
	 * In a .eh_frame section the CIE pointer is the
	 * delta between the address within the FDE
	 */
	fde->cie_pointer = (unsigned long)(p - entry_type - 4);

	cie = FUNC0(fde->cie_pointer);
	fde->cie = cie;

	if (cie->encoding)
		count = FUNC2(p, &fde->initial_location,
						 cie->encoding);
	else
		count = FUNC1(p, &fde->initial_location);

	p += count;

	if (cie->encoding)
		count = FUNC2(p, &fde->address_range,
						 cie->encoding & 0x0f);
	else
		count = FUNC1(p, &fde->address_range);

	p += count;

	if (fde->cie->flags & DWARF_CIE_Z_AUGMENTATION) {
		unsigned int length;
		count = FUNC3(p, &length);
		p += count + length;
	}

	/* Call frame instructions. */
	fde->instructions = p;
	fde->end = end;

	/* Add to list. */
	FUNC6(&dwarf_fde_lock, flags);
	FUNC5(&fde->link, &dwarf_fde_list);
	FUNC7(&dwarf_fde_lock, flags);

	return 0;
}