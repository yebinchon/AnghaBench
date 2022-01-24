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
struct input_dev {int dummy; } ;
struct fujitsu_t {int /*<<< orphan*/ * acpi_handle; struct input_dev* input; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct fujitsu_t* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device, int type)
{
	struct fujitsu_t *fujitsu = FUNC0(device);
	struct input_dev *input = fujitsu->input;

	FUNC2(input);

	FUNC1(input);

	fujitsu->acpi_handle = NULL;

	return 0;
}