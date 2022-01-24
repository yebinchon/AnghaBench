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
struct em28xx_fh {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EM28XX_RESOURCE_VBI ; 
 int EM28XX_RESOURCE_VIDEO ; 
#define  V4L2_BUF_TYPE_VBI_CAPTURE 129 
#define  V4L2_BUF_TYPE_VIDEO_CAPTURE 128 

__attribute__((used)) static int FUNC1(struct em28xx_fh *fh)
{
	switch (fh->type) {
	case V4L2_BUF_TYPE_VIDEO_CAPTURE:
		return EM28XX_RESOURCE_VIDEO;
	case V4L2_BUF_TYPE_VBI_CAPTURE:
		return EM28XX_RESOURCE_VBI;
	default:
		FUNC0();
		return 0;
	}
}