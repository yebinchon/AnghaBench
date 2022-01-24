#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nouveau_pm_level {int dummy; } ;
struct nouveau_pm {TYPE_2__* profile_dc; TYPE_1__* profile_ac; } ;
struct drm_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 struct nouveau_pm* FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*,struct nouveau_pm_level*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_pm_level*,char*,int) ; 
 struct drm_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *d, struct device_attribute *a, char *buf)
{
	struct drm_device *dev = FUNC3(FUNC6(d));
	struct nouveau_pm *pm = FUNC0(dev);
	struct nouveau_pm_level cur;
	int len = PAGE_SIZE, ret;
	char *ptr = buf;

	FUNC4(ptr, len, "profile: %s, %s\nc:",
		 pm->profile_ac->name, pm->profile_dc->name);
	ptr += FUNC5(buf);
	len -= FUNC5(buf);

	ret = FUNC1(dev, &cur);
	if (ret == 0)
		FUNC2(&cur, ptr, len);
	return FUNC5(buf);
}