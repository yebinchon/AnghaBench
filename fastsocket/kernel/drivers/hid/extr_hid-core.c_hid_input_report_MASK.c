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
struct hid_report_enum {scalar_t__ numbered; } ;
struct hid_report {int id; } ;
struct hid_driver {int (* raw_event ) (struct hid_device*,struct hid_report*,int*,int) ;} ;
struct hid_device {struct hid_driver* driver; struct hid_report_enum* report_enum; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HID_DEBUG_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 struct hid_report* FUNC2 (struct hid_report_enum*,int*) ; 
 scalar_t__ FUNC3 (struct hid_device*,struct hid_report*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int,...) ; 
 int FUNC8 (struct hid_device*,struct hid_report*,int*,int) ; 

int FUNC9(struct hid_device *hid, int type, u8 *data, int size, int interrupt)
{
	struct hid_report_enum *report_enum;
	struct hid_driver *hdrv;
	struct hid_report *report;
	char *buf;
	unsigned int i;
	int ret;

	if (!hid || !hid->driver)
		return -ENODEV;
	report_enum = hid->report_enum + type;
	hdrv = hid->driver;

	if (!size) {
		FUNC0("empty report\n");
		return -1;
	}

	buf = FUNC6(sizeof(char) * HID_DEBUG_BUFSIZE, GFP_ATOMIC);

	if (!buf) {
		report = FUNC2(report_enum, data);
		goto nomem;
	}

	FUNC7(buf, HID_DEBUG_BUFSIZE - 1,
			"\nreport (size %u) (%snumbered)\n", size, report_enum->numbered ? "" : "un");
	FUNC1(hid, buf);

	report = FUNC2(report_enum, data);
	if (!report) {
		FUNC5(buf);
		return -1;
	}

	/* dump the report */
	FUNC7(buf, HID_DEBUG_BUFSIZE - 1,
			"report %d (size %u) = ", report->id, size);
	FUNC1(hid, buf);
	for (i = 0; i < size; i++) {
		FUNC7(buf, HID_DEBUG_BUFSIZE - 1,
				" %02x", data[i]);
		FUNC1(hid, buf);
	}
	FUNC1(hid, "\n");

	FUNC5(buf);

nomem:
	if (hdrv && hdrv->raw_event && FUNC3(hid, report)) {
		ret = hdrv->raw_event(hid, report, data, size);
		if (ret != 0)
			return ret < 0 ? ret : 0;
	}

	FUNC4(hid, type, data, size, interrupt);

	return 0;
}