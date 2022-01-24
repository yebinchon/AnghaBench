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
typedef  int /*<<< orphan*/  efi_status_t ;
typedef  int /*<<< orphan*/  efi_capsule_header_t ;
struct TYPE_2__ {scalar_t__ runtime_version; } ;

/* Variables and functions */
 scalar_t__ EFI_2_00_SYSTEM_TABLE_REVISION ; 
 int /*<<< orphan*/  EFI_UNSUPPORTED ; 
 TYPE_1__ efi ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  update_capsule ; 

__attribute__((used)) static efi_status_t FUNC1(efi_capsule_header_t **capsules,
					    unsigned long count,
					    unsigned long sg_list)
{
	if (efi.runtime_version < EFI_2_00_SYSTEM_TABLE_REVISION)
		return EFI_UNSUPPORTED;

	return FUNC0(update_capsule, capsules, count, sg_list);
}