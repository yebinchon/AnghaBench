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
struct efi_variable {int dummy; } ;
struct efivar_entry {int /*<<< orphan*/  efivars; struct efi_variable var; } ;
typedef  int ssize_t ;
typedef  scalar_t__ efi_status_t ;

/* Variables and functions */
 scalar_t__ EFI_SUCCESS ; 
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct efi_variable*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct efi_variable*,int) ; 

__attribute__((used)) static ssize_t
FUNC2(struct efivar_entry *entry, char *buf)
{
	struct efi_variable *var = &entry->var;
	efi_status_t status;

	if (!entry || !buf)
		return 0;

	status = FUNC0(entry->efivars, var);
	if (status != EFI_SUCCESS)
		return -EIO;

	FUNC1(buf, var, sizeof(*var));
	return sizeof(*var);
}