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
struct kimage {scalar_t__ type; int /*<<< orphan*/  preserve_context; int /*<<< orphan*/  start; scalar_t__ head; int /*<<< orphan*/  swap_page; int /*<<< orphan*/  control_code_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEXEC_CONTROL_CODE_MAX_SIZE ; 
 scalar_t__ KEXEC_TYPE_DEFAULT ; 
 int PAGES_NR ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 size_t PA_CONTROL_PAGE ; 
 size_t PA_SWAP_PAGE ; 
 size_t PA_TABLE_PAGE ; 
 size_t VA_CONTROL_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/  (*) (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ),int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC15 (void*) ; 

void FUNC16(struct kimage *image)
{
	unsigned long page_list[PAGES_NR];
	void *control_page;
	int save_ftrace_enabled;

#ifdef CONFIG_KEXEC_JUMP
	if (image->preserve_context)
		save_processor_state();
#endif

	save_ftrace_enabled = FUNC1();

	/* Interrupts aren't acceptable while we reboot */
	FUNC5();

	if (image->preserve_context) {
#ifdef CONFIG_X86_IO_APIC
		/*
		 * We need to put APICs in legacy mode so that we can
		 * get timer interrupts in second kernel. kexec/kdump
		 * paths already have calls to disable_IO_APIC() in
		 * one form or other. kexec jump path also need
		 * one.
		 */
		disable_IO_APIC(0);
#endif
	}

	control_page = FUNC7(image->control_code_page) + PAGE_SIZE;
	FUNC6(control_page, relocate_kernel, KEXEC_CONTROL_CODE_MAX_SIZE);

	page_list[PA_CONTROL_PAGE] = FUNC15(control_page);
	page_list[VA_CONTROL_PAGE] = (unsigned long)control_page;
	page_list[PA_TABLE_PAGE] =
	  (unsigned long)FUNC2(FUNC7(image->control_code_page));

	if (image->type == KEXEC_TYPE_DEFAULT)
		page_list[PA_SWAP_PAGE] = (FUNC8(image->swap_page)
						<< PAGE_SHIFT);

	/*
	 * The segment registers are funny things, they have both a
	 * visible and an invisible part.  Whenever the visible part is
	 * set to a specific selector, the invisible part is loaded
	 * with from a table in memory.  At no other time is the
	 * descriptor table in memory accessed.
	 *
	 * I take advantage of this here by force loading the
	 * segments, before I zap the gdt with an invalid value.
	 */
	FUNC4();
	/*
	 * The gdt & idt are now invalid.
	 * If you want to load them you must set up your own idt & gdt.
	 */
	FUNC13(FUNC9(0), 0);
	FUNC14(FUNC9(0), 0);

	/* now call it */
	image->start = FUNC10((unsigned long)image->head,
				       (unsigned long)page_list,
				       image->start,
				       image->preserve_context);

#ifdef CONFIG_KEXEC_JUMP
	if (image->preserve_context)
		restore_processor_state();
#endif

	FUNC0(save_ftrace_enabled);
}