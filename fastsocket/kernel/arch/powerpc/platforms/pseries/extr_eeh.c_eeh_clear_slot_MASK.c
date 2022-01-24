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
struct device_node {struct device_node* parent; } ;
struct TYPE_2__ {int eeh_mode; scalar_t__ eeh_check_count; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int) ; 
 int /*<<< orphan*/  confirm_error_lock ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6 (struct device_node *dn, int mode_flag)
{
	unsigned long flags;
	FUNC4(&confirm_error_lock, flags);
	
	dn = FUNC2 (dn);
	
	/* Back up one, since config addrs might be shared */
	if (!FUNC3(dn) && FUNC0(dn->parent))
		dn = dn->parent;

	FUNC0(dn)->eeh_mode &= ~mode_flag;
	FUNC0(dn)->eeh_check_count = 0;
	FUNC1(dn, mode_flag);
	FUNC5(&confirm_error_lock, flags);
}