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
struct seq_file {struct hid_device* private; } ;
struct hid_device {int rsize; int /*<<< orphan*/ * rdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hid_device*,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct seq_file *f, void *p)
{
	struct hid_device *hdev = f->private;
	int i;

	/* dump HID report descriptor */
	for (i = 0; i < hdev->rsize; i++)
		FUNC2(f, "%02x ", hdev->rdesc[i]);
	FUNC2(f, "\n\n");

	/* dump parsed data and input mappings */
	FUNC0(hdev, f);
	FUNC2(f, "\n");
	FUNC1(hdev, f);

	return 0;
}