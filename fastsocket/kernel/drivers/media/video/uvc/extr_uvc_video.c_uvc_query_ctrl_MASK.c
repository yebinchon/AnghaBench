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
struct uvc_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u16 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  UVC_CTRL_CONTROL_TIMEOUT ; 
 int FUNC0 (struct uvc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct uvc_device *dev, __u8 query, __u8 unit,
			__u8 intfnum, __u8 cs, void *data, __u16 size)
{
	int ret;

	ret = FUNC0(dev, query, unit, intfnum, cs, data, size,
				UVC_CTRL_CONTROL_TIMEOUT);
	if (ret != size) {
		FUNC1(KERN_ERR, "Failed to query (%s) UVC control %u on "
			"unit %u: %d (exp. %u).\n", FUNC2(query), cs,
			unit, ret, size);
		return -EIO;
	}

	return 0;
}