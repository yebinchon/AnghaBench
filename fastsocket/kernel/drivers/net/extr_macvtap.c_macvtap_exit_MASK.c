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

/* Variables and functions */
 int /*<<< orphan*/  MACVTAP_NUM_DEVS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  macvtap_cdev ; 
 int /*<<< orphan*/  macvtap_class ; 
 int /*<<< orphan*/  macvtap_link_ops ; 
 int /*<<< orphan*/  macvtap_major ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC2(&macvtap_link_ops);
	FUNC1(macvtap_class);
	FUNC0(&macvtap_cdev);
	FUNC3(macvtap_major, MACVTAP_NUM_DEVS);
}