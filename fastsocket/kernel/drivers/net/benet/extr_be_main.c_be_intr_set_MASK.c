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
struct be_adapter {scalar_t__ eeh_error; } ;

/* Variables and functions */
 int FUNC0 (struct be_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,int) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 

__attribute__((used)) static void FUNC3(struct be_adapter *adapter, bool enable)
{
	int status = 0;

	/* On lancer interrupts can't be controlled via this register */
	if (FUNC2(adapter))
		return;

	if (adapter->eeh_error)
		return;

	status = FUNC0(adapter, enable);
	if (status)
		FUNC1(adapter, enable);
}