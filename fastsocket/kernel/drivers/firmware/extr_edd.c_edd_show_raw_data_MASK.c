#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int key; int length; } ;
struct edd_info {TYPE_1__ params; } ;
struct edd_device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct edd_info* FUNC0 (struct edd_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int) ; 

__attribute__((used)) static ssize_t
FUNC2(struct edd_device *edev, char *buf)
{
	struct edd_info *info;
	ssize_t len = sizeof (info->params);
	if (!edev)
		return -EINVAL;
	info = FUNC0(edev);
	if (!info || !buf)
		return -EINVAL;

	if (!(info->params.key == 0xBEDD || info->params.key == 0xDDBE))
		len = info->params.length;

	/* In case of buggy BIOSs */
	if (len > (sizeof(info->params)))
		len = sizeof(info->params);

	FUNC1(buf, &info->params, len);
	return len;
}