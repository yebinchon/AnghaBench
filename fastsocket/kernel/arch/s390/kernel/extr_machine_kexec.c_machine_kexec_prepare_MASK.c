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
struct kimage {scalar_t__ type; int /*<<< orphan*/  control_code_page; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int IPL_NSS_VALID ; 
 scalar_t__ KEXEC_TYPE_CRASH ; 
 scalar_t__ KEXEC_TYPE_DEFAULT ; 
 int ipl_flags ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relocate_kernel ; 
 int /*<<< orphan*/  relocate_kernel_len ; 

int FUNC3(struct kimage *image)
{
	void *reboot_code_buffer;

	/* Can't replace kernel image since it is read-only. */
	if (ipl_flags & IPL_NSS_VALID)
		return -ENOSYS;

	if (image->type == KEXEC_TYPE_CRASH)
		return FUNC0();

	/* We don't support anything but the default image type for now. */
	if (image->type != KEXEC_TYPE_DEFAULT)
		return -EINVAL;

	/* Get the destination where the assembler code should be copied to.*/
	reboot_code_buffer = (void *) FUNC2(image->control_code_page);

	/* Then copy it */
	FUNC1(reboot_code_buffer, relocate_kernel, relocate_kernel_len);
	return 0;
}