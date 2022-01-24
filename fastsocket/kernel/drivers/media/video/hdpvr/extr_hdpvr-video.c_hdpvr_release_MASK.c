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
struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct hdpvr_device {scalar_t__ status; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  open_count; } ;
struct file {struct hdpvr_fh* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ STATUS_STREAMING ; 
 int /*<<< orphan*/  FUNC0 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct file *file)
{
	struct hdpvr_fh		*fh  = file->private_data;
	struct hdpvr_device	*dev = fh->dev;

	if (!dev)
		return -ENODEV;

	FUNC1(&dev->io_mutex);
	if (!(--dev->open_count) && dev->status == STATUS_STREAMING)
		FUNC0(dev);

	FUNC2(&dev->io_mutex);

	return 0;
}