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
struct kobj_uevent_env {int buflen; int /*<<< orphan*/ * buf; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct kobj_uevent_env*,char*) ; 
 int FUNC1 (struct acpi_device*,int /*<<< orphan*/ *,int) ; 
 struct acpi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct kobj_uevent_env *env)
{
	struct acpi_device *acpi_dev = FUNC2(dev);
	int len;

	if (FUNC0(env, "MODALIAS="))
		return -ENOMEM;
	len = FUNC1(acpi_dev, &env->buf[env->buflen - 1],
			      sizeof(env->buf) - env->buflen);
	if (len >= (sizeof(env->buf) - env->buflen))
		return -ENOMEM;
	env->buflen += len;
	return 0;
}