#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  write_proc; int /*<<< orphan*/  read_proc; } ;

/* Variables and functions */
 int ENOENT ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 TYPE_1__* FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dasd_devices_entry ; 
 int /*<<< orphan*/  dasd_devices_file_ops ; 
 int /*<<< orphan*/ * dasd_proc_root_entry ; 
 TYPE_1__* dasd_statistics_entry ; 
 int /*<<< orphan*/  dasd_statistics_read ; 
 int /*<<< orphan*/  dasd_statistics_write ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

int
FUNC4(void)
{
	dasd_proc_root_entry = FUNC2("dasd", NULL);
	if (!dasd_proc_root_entry)
		goto out_nodasd;
	dasd_devices_entry = FUNC1("devices",
					 S_IFREG | S_IRUGO | S_IWUSR,
					 dasd_proc_root_entry,
					 &dasd_devices_file_ops);
	if (!dasd_devices_entry)
		goto out_nodevices;
	dasd_statistics_entry = FUNC0("statistics",
						  S_IFREG | S_IRUGO | S_IWUSR,
						  dasd_proc_root_entry);
	if (!dasd_statistics_entry)
		goto out_nostatistics;
	dasd_statistics_entry->read_proc = dasd_statistics_read;
	dasd_statistics_entry->write_proc = dasd_statistics_write;
	return 0;

 out_nostatistics:
	FUNC3("devices", dasd_proc_root_entry);
 out_nodevices:
	FUNC3("dasd", NULL);
 out_nodasd:
	return -ENOENT;
}