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
typedef  int /*<<< orphan*/  efi_status_t ;
typedef  int /*<<< orphan*/  efi_char16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reset_system ; 

__attribute__((used)) static void FUNC1(int reset_type,
				  efi_status_t status,
				  unsigned long data_size,
				  efi_char16_t *data)
{
	FUNC0(reset_system, reset_type, status,
		       data_size, data);
}