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
struct osd_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OSD_VER1 ; 
 int FUNC1 (struct osd_dev*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct osd_dev*,int /*<<< orphan*/ ) ; 

int FUNC3(struct osd_dev *od, void *caps)
{
	int ret;

	/* Auto-detect the osd version */
	ret = FUNC1(od, caps);
	if (ret) {
		FUNC2(od, OSD_VER1);
		FUNC0("converting to OSD1\n");
		ret = FUNC1(od, caps);
	}

	return ret;
}