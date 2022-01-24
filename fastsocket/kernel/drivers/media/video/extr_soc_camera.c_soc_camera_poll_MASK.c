#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct soc_camera_host {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  stream; } ;
struct soc_camera_device {TYPE_3__ dev; TYPE_1__ vb_vidq; struct file* streamer; } ;
struct file {struct soc_camera_device* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_5__ {unsigned int (* poll ) (struct file*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 unsigned int EBUSY ; 
 unsigned int POLLERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct file*,int /*<<< orphan*/ *) ; 
 struct soc_camera_host* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *file, poll_table *pt)
{
	struct soc_camera_device *icd = file->private_data;
	struct soc_camera_host *ici = FUNC3(icd->dev.parent);

	if (icd->streamer != file)
		return -EBUSY;

	if (FUNC1(&icd->vb_vidq.stream)) {
		FUNC0(&icd->dev, "Trying to poll with no queued buffers!\n");
		return POLLERR;
	}

	return ici->ops->poll(file, pt);
}