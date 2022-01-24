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
struct wl1271 {int sg_enabled; int /*<<< orphan*/  mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct wl1271* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					       struct device_attribute *attr,
					       char *buf)
{
	struct wl1271 *wl = FUNC0(dev);
	ssize_t len;

	len = PAGE_SIZE;

	FUNC1(&wl->mutex);
	len = FUNC3(buf, len, "%d\n\n0 - off\n1 - on\n",
		       wl->sg_enabled);
	FUNC2(&wl->mutex);

	return len;

}