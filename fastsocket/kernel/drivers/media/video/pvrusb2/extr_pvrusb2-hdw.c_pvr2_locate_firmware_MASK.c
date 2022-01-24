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
struct pvr2_hdw {TYPE_1__* usb_dev; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  PVR2_TRACE_ERROR_LEGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 

__attribute__((used)) static int FUNC3(struct pvr2_hdw *hdw,
				const struct firmware **fw_entry,
				const char *fwtypename,
				unsigned int fwcount,
				const char *fwnames[])
{
	unsigned int idx;
	int ret = -EINVAL;
	for (idx = 0; idx < fwcount; idx++) {
		ret = FUNC1(fw_entry,
				       fwnames[idx],
				       &hdw->usb_dev->dev);
		if (!ret) {
			FUNC2("Located %s firmware: %s;"
				       " uploading...",
				       fwtypename,
				       fwnames[idx]);
			return idx;
		}
		if (ret == -ENOENT) continue;
		FUNC0(PVR2_TRACE_ERROR_LEGS,
			   "request_firmware fatal error with code=%d",ret);
		return ret;
	}
	FUNC0(PVR2_TRACE_ERROR_LEGS,
		   "***WARNING***"
		   " Device %s firmware"
		   " seems to be missing.",
		   fwtypename);
	FUNC0(PVR2_TRACE_ERROR_LEGS,
		   "Did you install the pvrusb2 firmware files"
		   " in their proper location?");
	if (fwcount == 1) {
		FUNC0(PVR2_TRACE_ERROR_LEGS,
			   "request_firmware unable to locate %s file %s",
			   fwtypename,fwnames[0]);
	} else {
		FUNC0(PVR2_TRACE_ERROR_LEGS,
			   "request_firmware unable to locate"
			   " one of the following %s files:",
			   fwtypename);
		for (idx = 0; idx < fwcount; idx++) {
			FUNC0(PVR2_TRACE_ERROR_LEGS,
				   "request_firmware: Failed to find %s",
				   fwnames[idx]);
		}
	}
	return ret;
}