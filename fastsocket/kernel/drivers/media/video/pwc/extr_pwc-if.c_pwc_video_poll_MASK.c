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
struct video_device {int dummy; } ;
struct pwc_device {int /*<<< orphan*/ * full_frames; scalar_t__ error_status; int /*<<< orphan*/  frameq; int /*<<< orphan*/  modlock; } ;
struct file {struct video_device* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int EFAULT ; 
 unsigned int POLLERR ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pwc_device*) ; 
 struct pwc_device* FUNC4 (struct video_device*) ; 

__attribute__((used)) static unsigned int FUNC5(struct file *file, poll_table *wait)
{
	struct video_device *vdev = file->private_data;
	struct pwc_device *pdev;
	int ret;

	if (vdev == NULL)
		return -EFAULT;
	pdev = FUNC4(vdev);
	if (pdev == NULL)
		return -EFAULT;

	/* Start the stream (if not already started) */
	FUNC0(&pdev->modlock);
	ret = FUNC3(pdev);
	FUNC1(&pdev->modlock);
	if (ret)
		return ret;

	FUNC2(file, &pdev->frameq, wait);
	if (pdev->error_status)
		return POLLERR;
	if (pdev->full_frames != NULL) /* we have frames waiting */
		return (POLLIN | POLLRDNORM);

	return 0;
}