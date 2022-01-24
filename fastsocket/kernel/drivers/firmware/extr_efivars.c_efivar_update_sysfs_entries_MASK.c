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
struct work_struct {int dummy; } ;
struct efivars {int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
typedef  scalar_t__ efi_status_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;
typedef  int /*<<< orphan*/  efi_char16_t ;
struct TYPE_2__ {scalar_t__ (* get_next_variable ) (unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ EFI_NOT_FOUND ; 
 scalar_t__ EFI_SUCCESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct efivars __efivars ; 
 int /*<<< orphan*/  FUNC0 (struct efivars*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct work_struct *work)
{
	struct efivars *efivars = &__efivars;
	efi_guid_t vendor;
	efi_char16_t *variable_name;
	unsigned long variable_name_size = 1024;
	efi_status_t status = EFI_NOT_FOUND;
	bool found;

	/* Add new sysfs entries */
	while (1) {
		variable_name = FUNC2(variable_name_size, GFP_KERNEL);
		if (!variable_name) {
			FUNC3("efivars: Memory allocation failed.\n");
			return;
		}

		FUNC4(&efivars->lock);
		found = false;
		while (1) {
			variable_name_size = 1024;
			status = efivars->ops->get_next_variable(
							&variable_name_size,
							variable_name,
							&vendor);
			if (status != EFI_SUCCESS) {
				break;
			} else {
				if (!FUNC8(variable_name,
				    &vendor)) {
					found = true;
					break;
				}
			}
		}
		FUNC5(&efivars->lock);

		if (!found) {
			FUNC1(variable_name);
			break;
		} else {
			variable_name_size = FUNC7(variable_name,
							       variable_name_size);
			FUNC0(efivars,
						  variable_name_size,
						  variable_name, &vendor);
		}
	}
}