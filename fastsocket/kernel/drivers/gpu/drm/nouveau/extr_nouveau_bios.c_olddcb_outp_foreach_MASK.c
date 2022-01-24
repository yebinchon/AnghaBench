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
typedef  int u8 ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int DCB_OUTPUT_EOL ; 
 int DCB_OUTPUT_UNUSED ; 
 int FUNC0 (int) ; 
 int* FUNC1 (struct drm_device*,int) ; 

int
FUNC2(struct drm_device *dev, void *data,
		 int (*exec)(struct drm_device *, void *, int idx, u8 *outp))
{
	int ret, idx = -1;
	u8 *outp = NULL;
	while ((outp = FUNC1(dev, ++idx))) {
		if (FUNC0(outp[0]) == 0x00000000)
			break; /* seen on an NV11 with DCB v1.5 */
		if (FUNC0(outp[0]) == 0xffffffff)
			break; /* seen on an NV17 with DCB v2.0 */

		if ((outp[0] & 0x0f) == DCB_OUTPUT_UNUSED)
			continue;
		if ((outp[0] & 0x0f) == DCB_OUTPUT_EOL)
			break;

		ret = exec(dev, data, idx, outp);
		if (ret)
			return ret;
	}

	return 0;
}