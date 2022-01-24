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
typedef  int /*<<< orphan*/  u32 ;
struct bfa_ioc_s {int dummy; } ;

/* Variables and functions */
 scalar_t__ BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFI_FWBOOT_TYPE_MEMTEST ; 
 int /*<<< orphan*/  BFI_IOC_INITING ; 
 int /*<<< orphan*/  BFI_IOC_MEMTEST ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*) ; 
 scalar_t__ FUNC3 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ioc_boots ; 

void
FUNC7(struct bfa_ioc_s *ioc, u32 boot_type, u32 boot_env)
{
	FUNC6(ioc, ioc_boots);

	if (FUNC3(ioc) != BFA_STATUS_OK)
		return;

	/*
	 * Initialize IOC state of all functions on a chip reset.
	 */
	if (boot_type == BFI_FWBOOT_TYPE_MEMTEST) {
		FUNC5(ioc, BFI_IOC_MEMTEST);
		FUNC4(ioc, BFI_IOC_MEMTEST);
	} else {
		FUNC5(ioc, BFI_IOC_INITING);
		FUNC4(ioc, BFI_IOC_INITING);
	}

	FUNC2(ioc);
	FUNC0(ioc, boot_type, boot_env);
	FUNC1(ioc);
}