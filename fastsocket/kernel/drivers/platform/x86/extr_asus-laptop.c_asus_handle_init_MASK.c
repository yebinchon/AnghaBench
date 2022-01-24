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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/ * acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC2(char *name, acpi_handle * handle,
			    char **paths, int num_paths)
{
	int i;
	acpi_status status;

	for (i = 0; i < num_paths; i++) {
		status = FUNC1(NULL, paths[i], handle);
		if (FUNC0(status))
			return 0;
	}

	*handle = NULL;
	return -ENODEV;
}