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
typedef  unsigned long long u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  void* acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  METHOD_NAME__ADR ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long long*) ; 

__attribute__((used)) static acpi_status FUNC2(acpi_handle handle, u32 lvl_not_used,
				      void *addr_p, void **ret_p)
{
	unsigned long long addr;
	acpi_status status;

	status = FUNC1(handle, METHOD_NAME__ADR, NULL, &addr);
	if (FUNC0(status) && addr == *((u64 *)addr_p)) {
		*ret_p = handle;
		return AE_CTRL_TERMINATE;
	}
	return AE_OK;
}