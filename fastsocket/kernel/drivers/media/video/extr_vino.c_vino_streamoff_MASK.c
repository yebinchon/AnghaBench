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
struct vino_channel_settings {scalar_t__ streaming; scalar_t__ reading; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EBUSY ; 
 struct vino_channel_settings* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct vino_channel_settings*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *__fh,
		enum v4l2_buf_type i)
{
	struct vino_channel_settings *vcs = FUNC0(file);
	if (vcs->reading)
		return -EBUSY;

	if (!vcs->streaming)
		return 0;

	vcs->streaming = 0;
	FUNC1(vcs);

	return 0;
}