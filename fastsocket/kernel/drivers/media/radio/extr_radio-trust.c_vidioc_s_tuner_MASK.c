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
struct v4l2_tuner {scalar_t__ audmode; scalar_t__ index; } ;
struct trust {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_MODE_STEREO ; 
 int /*<<< orphan*/  FUNC0 (struct trust*,int) ; 
 struct trust* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_tuner *v)
{
	struct trust *tr = FUNC1(file);

	if (v->index)
		return -EINVAL;
	FUNC0(tr, v->audmode == V4L2_TUNER_MODE_STEREO);
	return 0;
}