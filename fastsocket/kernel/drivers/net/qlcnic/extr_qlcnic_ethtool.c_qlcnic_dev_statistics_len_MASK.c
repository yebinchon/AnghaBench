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
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter)
{
	if (FUNC0(adapter))
		return FUNC1();
	else if (FUNC2(adapter))
		return FUNC3();
	else
		return -1;
}