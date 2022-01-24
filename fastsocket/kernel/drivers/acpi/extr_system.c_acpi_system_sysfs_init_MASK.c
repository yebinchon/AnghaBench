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
struct acpi_table_header {int dummy; } ;
struct acpi_table_attr {int /*<<< orphan*/  node; int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int AE_OK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int FUNC0 (int,struct acpi_table_header**) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_kobj ; 
 int /*<<< orphan*/  acpi_sysfs_table_handler ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_table_attr*,struct acpi_table_header*) ; 
 int /*<<< orphan*/  acpi_table_attr_list ; 
 int /*<<< orphan*/  dynamic_tables_kobj ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_table_attr*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_table_attr* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tables_kobj ; 

__attribute__((used)) static int FUNC10(void)
{
	struct acpi_table_attr *table_attr;
	struct acpi_table_header *table_header = NULL;
	int table_index = 0;
	int result;

	tables_kobj = FUNC4("tables", acpi_kobj);
	if (!tables_kobj)
		goto err;

	dynamic_tables_kobj = FUNC4("dynamic", tables_kobj);
	if (!dynamic_tables_kobj)
		goto err_dynamic_tables;

	do {
		result = FUNC0(table_index, &table_header);
		if (!result) {
			table_index++;
			table_attr = NULL;
			table_attr =
			    FUNC7(sizeof(struct acpi_table_attr), GFP_KERNEL);
			if (!table_attr)
				return -ENOMEM;

			FUNC2(table_attr, table_header);
			result =
			    FUNC9(tables_kobj,
						  &table_attr->attr);
			if (result) {
				FUNC3(table_attr);
				return result;
			} else
				FUNC8(&table_attr->node,
					      &acpi_table_attr_list);
		}
	} while (!result);
	FUNC6(tables_kobj, KOBJ_ADD);
	FUNC6(dynamic_tables_kobj, KOBJ_ADD);
	result = FUNC1(acpi_sysfs_table_handler, NULL);

	return result == AE_OK ? 0 : -EINVAL;
err_dynamic_tables:
	FUNC5(tables_kobj);
err:
	return -ENOMEM;
}