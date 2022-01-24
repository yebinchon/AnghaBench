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
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NS_NO_UPSEARCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_namespace_node*,char const*,int /*<<< orphan*/ ,struct acpi_namespace_node**) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_namespace_node*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void
FUNC5(const char *module_name,
			    u32 line_number,
			    const char *message,
			    struct acpi_namespace_node *prefix_node,
			    const char *path, acpi_status method_status)
{
	acpi_status status;
	struct acpi_namespace_node *node = prefix_node;

	FUNC4("ACPI Error (%s-%04d): ", module_name, line_number);

	if (path) {
		status =
		    FUNC2(prefix_node, path, ACPI_NS_NO_UPSEARCH,
				     &node);
		if (FUNC0(status)) {
			FUNC4("[Could not get node by pathname]");
		}
	}

	FUNC3(node, message);
	FUNC4(", %s\n", FUNC1(method_status));
}