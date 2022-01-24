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
struct kimage {unsigned long head; int /*<<< orphan*/  start; int /*<<< orphan*/  control_code_page; } ;
typedef  int /*<<< orphan*/  (* noretfun_t ) () ;

/* Variables and functions */
 unsigned long IND_DESTINATION ; 
 unsigned long IND_DONE ; 
 unsigned long IND_INDIRECTION ; 
 unsigned long IND_SOURCE ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long kexec_indirection_page ; 
 int /*<<< orphan*/  kexec_start_address ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long* FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  relocate_new_kernel ; 
 int /*<<< orphan*/  relocate_new_kernel_size ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(struct kimage *image)
{
	unsigned long reboot_code_buffer;
	unsigned long entry;
	unsigned long *ptr;

	reboot_code_buffer =
	  (unsigned long)FUNC3(image->control_code_page);

	kexec_start_address = image->start;
	kexec_indirection_page =
		(unsigned long) FUNC4(image->head & PAGE_MASK);

	FUNC2((void*)reboot_code_buffer, relocate_new_kernel,
	       relocate_new_kernel_size);

	/*
	 * The generic kexec code builds a page list with physical
	 * addresses. they are directly accessible through KSEG0 (or
	 * CKSEG0 or XPHYS if on 64bit system), hence the
	 * pys_to_virt() call.
	 */
	for (ptr = &image->head; (entry = *ptr) && !(entry &IND_DONE);
	     ptr = (entry & IND_INDIRECTION) ?
	       FUNC4(entry & PAGE_MASK) : ptr + 1) {
		if (*ptr & IND_SOURCE || *ptr & IND_INDIRECTION ||
		    *ptr & IND_DESTINATION)
			*ptr = (unsigned long) FUNC4(*ptr);
	}

	/*
	 * we do not want to be bothered.
	 */
	FUNC1();

	FUNC5("Will call new kernel at %08lx\n", image->start);
	FUNC5("Bye ...\n");
	FUNC0();
	((noretfun_t) reboot_code_buffer)();
}