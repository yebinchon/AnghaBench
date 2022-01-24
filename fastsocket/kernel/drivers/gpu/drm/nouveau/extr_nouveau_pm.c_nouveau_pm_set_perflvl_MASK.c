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
struct drm_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct drm_device*,char const*) ; 
 struct drm_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *d, struct device_attribute *a,
		       const char *buf, size_t count)
{
	struct drm_device *dev = FUNC1(FUNC3(d));
	int ret;

	ret = FUNC0(dev, buf);
	if (ret)
		return ret;
	return FUNC2(buf);
}