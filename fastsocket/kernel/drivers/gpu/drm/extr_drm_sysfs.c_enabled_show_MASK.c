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
struct drm_connector {scalar_t__ encoder; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 struct drm_connector* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *device,
			    struct device_attribute *attr,
			   char *buf)
{
	struct drm_connector *connector = FUNC1(device);

	return FUNC0(buf, PAGE_SIZE, "%s\n", connector->encoder ? "enabled" :
			"disabled");
}