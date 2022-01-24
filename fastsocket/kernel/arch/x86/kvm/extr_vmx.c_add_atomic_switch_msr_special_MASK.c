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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  VM_ENTRY_CONTROLS ; 
 int /*<<< orphan*/  VM_EXIT_CONTROLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned long entry,
		unsigned long exit, unsigned long guest_val_vmcs,
		unsigned long host_val_vmcs, u64 guest_val, u64 host_val)
{
	FUNC1(guest_val_vmcs, guest_val);
	FUNC1(host_val_vmcs, host_val);
	FUNC0(VM_ENTRY_CONTROLS, entry);
	FUNC0(VM_EXIT_CONTROLS, exit);
}