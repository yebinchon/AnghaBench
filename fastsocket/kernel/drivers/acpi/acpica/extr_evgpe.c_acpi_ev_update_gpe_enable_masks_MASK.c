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
typedef  scalar_t__ u8 ;
struct acpi_gpe_register_info {int base_gpe_number; int /*<<< orphan*/  enable_for_run; int /*<<< orphan*/  enable_for_wake; } ;
struct acpi_gpe_event_info {int gpe_number; int flags; struct acpi_gpe_register_info* register_info; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_GPE_DISABLE ; 
 int ACPI_GPE_TYPE_MASK ; 
#define  ACPI_GPE_TYPE_RUNTIME 130 
#define  ACPI_GPE_TYPE_WAKE 129 
#define  ACPI_GPE_TYPE_WAKE_RUN 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ev_update_gpe_enable_masks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC4(struct acpi_gpe_event_info *gpe_event_info,
				u8 type)
{
	struct acpi_gpe_register_info *gpe_register_info;
	u8 register_bit;

	FUNC1(ev_update_gpe_enable_masks);

	gpe_register_info = gpe_event_info->register_info;
	if (!gpe_register_info) {
		FUNC3(AE_NOT_EXIST);
	}

	register_bit = (u8)
	    (1 <<
	     (gpe_event_info->gpe_number - gpe_register_info->base_gpe_number));

	/* 1) Disable case. Simply clear all enable bits */

	if (type == ACPI_GPE_DISABLE) {
		FUNC0(gpe_register_info->enable_for_wake,
			       register_bit);
		FUNC0(gpe_register_info->enable_for_run, register_bit);
		FUNC3(AE_OK);
	}

	/* 2) Enable case. Set/Clear the appropriate enable bits */

	switch (gpe_event_info->flags & ACPI_GPE_TYPE_MASK) {
	case ACPI_GPE_TYPE_WAKE:
		FUNC2(gpe_register_info->enable_for_wake, register_bit);
		FUNC0(gpe_register_info->enable_for_run, register_bit);
		break;

	case ACPI_GPE_TYPE_RUNTIME:
		FUNC0(gpe_register_info->enable_for_wake,
			       register_bit);
		FUNC2(gpe_register_info->enable_for_run, register_bit);
		break;

	case ACPI_GPE_TYPE_WAKE_RUN:
		FUNC2(gpe_register_info->enable_for_wake, register_bit);
		FUNC2(gpe_register_info->enable_for_run, register_bit);
		break;

	default:
		FUNC3(AE_BAD_PARAMETER);
	}

	FUNC3(AE_OK);
}