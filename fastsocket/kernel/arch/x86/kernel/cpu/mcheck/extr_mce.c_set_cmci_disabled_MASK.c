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
typedef  scalar_t__ u64 ;
struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int mce_cmci_disabled ; 
 int /*<<< orphan*/  mce_disable_ce ; 
 int /*<<< orphan*/  mce_enable_ce ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static ssize_t FUNC2(struct sys_device *s,
				 struct sysdev_attribute *attr,
				 const char *buf, size_t size)
{
	u64 new;

	if (FUNC1(buf, 0, &new) < 0)
		return -EINVAL;

	if (mce_cmci_disabled ^ !!new) {
		if (new) {
			/* disable cmci */
			FUNC0(mce_disable_ce, NULL, 1);
			mce_cmci_disabled = 1;
		} else {
			/* enable cmci */
			mce_cmci_disabled = 0;
			FUNC0(mce_enable_ce, NULL, 1);
		}
	}
	return size;
}