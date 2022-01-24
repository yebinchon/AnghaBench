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
struct v4l2_input {size_t index; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t KNC1_INPUTS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,size_t) ; 
 int /*<<< orphan*/ * knc1_inputs ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_input*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh, struct v4l2_input *i)
{
	FUNC0(1, "VIDIOC_ENUMINPUT %d.\n", i->index);
	if (i->index >= KNC1_INPUTS)
		return -EINVAL;
	FUNC1(i, &knc1_inputs[i->index], sizeof(struct v4l2_input));
	return 0;
}