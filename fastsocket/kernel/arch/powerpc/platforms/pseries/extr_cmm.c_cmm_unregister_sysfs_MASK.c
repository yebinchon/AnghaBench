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
struct sys_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cmm_attrs ; 
 int /*<<< orphan*/  cmm_sysdev_class ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sys_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sys_device*) ; 

__attribute__((used)) static void FUNC4(struct sys_device *sysdev)
{
	int i;

	for (i = 0; i < FUNC0(cmm_attrs); i++)
		FUNC2(sysdev, cmm_attrs[i]);
	FUNC3(sysdev);
	FUNC1(&cmm_sysdev_class);
}