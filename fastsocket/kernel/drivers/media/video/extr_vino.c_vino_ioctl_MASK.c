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
struct vino_channel_settings {int /*<<< orphan*/  mutex; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vino_channel_settings* FUNC2 (struct file*) ; 
 long FUNC3 (struct file*,unsigned int,unsigned long) ; 

__attribute__((used)) static long FUNC4(struct file *file,
		      unsigned int cmd, unsigned long arg)
{
	struct vino_channel_settings *vcs = FUNC2(file);
	long ret;

	if (FUNC0(&vcs->mutex))
		return -EINTR;

	ret = FUNC3(file, cmd, arg);

	FUNC1(&vcs->mutex);

	return ret;
}