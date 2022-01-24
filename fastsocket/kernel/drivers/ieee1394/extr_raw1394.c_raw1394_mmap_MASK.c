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
struct vm_area_struct {int dummy; } ;
struct file_info {scalar_t__ iso_state; int /*<<< orphan*/  state_mutex; TYPE_1__* iso_handle; } ;
struct file {struct file_info* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  data_buf; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ RAW1394_ISO_INACTIVE ; 
 int FUNC0 (int /*<<< orphan*/ *,struct file*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct file *file, struct vm_area_struct *vma)
{
	struct file_info *fi = file->private_data;
	int ret;

	if (!FUNC1(&fi->state_mutex))
		return -EAGAIN;

	if (fi->iso_state == RAW1394_ISO_INACTIVE)
		ret = -EINVAL;
	else
		ret = FUNC0(&fi->iso_handle->data_buf, file, vma);

	FUNC2(&fi->state_mutex);

	return ret;
}