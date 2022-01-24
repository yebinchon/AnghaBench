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
typedef  int u8 ;
struct aml_resource_small_header {int dummy; } ;
struct aml_resource_large_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (void*) ; 
 int ACPI_RESOURCE_NAME_LARGE ; 

u8 FUNC2(void *aml)
{
	FUNC0();

	/* Examine the large/small bit in the resource header */

	if (FUNC1(aml) & ACPI_RESOURCE_NAME_LARGE) {
		return (sizeof(struct aml_resource_large_header));
	} else {
		return (sizeof(struct aml_resource_small_header));
	}
}