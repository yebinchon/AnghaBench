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
typedef  scalar_t__ wmi_notify_handler ;
struct wmi_block {void* handler_data; scalar_t__ handler; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  AE_ALREADY_ACQUIRED ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct wmi_block**) ; 
 int /*<<< orphan*/  FUNC1 (struct wmi_block*,int) ; 

acpi_status FUNC2(const char *guid,
wmi_notify_handler handler, void *data)
{
	struct wmi_block *block;
	acpi_status status;

	if (!guid || !handler)
		return AE_BAD_PARAMETER;

	FUNC0(guid, &block);
	if (!block)
		return AE_NOT_EXIST;

	if (block->handler)
		return AE_ALREADY_ACQUIRED;

	block->handler = handler;
	block->handler_data = data;

	status = FUNC1(block, 1);

	return status;
}