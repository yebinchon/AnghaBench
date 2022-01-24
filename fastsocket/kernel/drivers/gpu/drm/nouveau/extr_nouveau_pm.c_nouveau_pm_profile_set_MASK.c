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
struct nouveau_pm_profile {int dummy; } ;
struct nouveau_pm {struct nouveau_pm_profile* profile_dc; struct nouveau_pm_profile* profile_ac; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  string ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int nouveau_perflvl_wr ; 
 struct nouveau_pm* FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 struct nouveau_pm_profile* FUNC2 (struct drm_device*,char*) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static int
FUNC6(struct drm_device *dev, const char *profile)
{
	struct nouveau_pm *pm = FUNC0(dev);
	struct nouveau_pm_profile *ac = NULL, *dc = NULL;
	char string[16], *cur = string, *ptr;

	/* safety precaution, for now */
	if (nouveau_perflvl_wr != 7777)
		return -EPERM;

	FUNC4(string, profile, sizeof(string));
	string[sizeof(string) - 1] = 0;
	if ((ptr = FUNC3(string, '\n')))
		*ptr = '\0';

	ptr = FUNC5(&cur, ",");
	if (ptr)
		ac = FUNC2(dev, ptr);

	ptr = FUNC5(&cur, ",");
	if (ptr)
		dc = FUNC2(dev, ptr);
	else
		dc = ac;

	if (ac == NULL || dc == NULL)
		return -EINVAL;

	pm->profile_ac = ac;
	pm->profile_dc = dc;
	FUNC1(dev);
	return 0;
}