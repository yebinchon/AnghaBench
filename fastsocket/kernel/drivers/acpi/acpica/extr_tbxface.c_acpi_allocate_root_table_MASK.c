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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ROOT_ALLOW_RESIZE ; 
 TYPE_1__ acpi_gbl_root_table_list ; 
 int /*<<< orphan*/  FUNC0 () ; 

acpi_status FUNC1(u32 initial_table_count)
{

	acpi_gbl_root_table_list.size = initial_table_count;
	acpi_gbl_root_table_list.flags = ACPI_ROOT_ALLOW_RESIZE;

	return (FUNC0());
}