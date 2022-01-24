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
struct vino_channel_settings {int input; } ;
struct file {int dummy; } ;
typedef  unsigned int __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  input_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int VINO_INPUT_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vino_channel_settings* FUNC3 (struct file*) ; 
 TYPE_1__* vino_drvdata ; 
 unsigned int FUNC4 (struct vino_channel_settings*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *__fh,
			     unsigned int *i)
{
	struct vino_channel_settings *vcs = FUNC3(file);
	__u32 index;
	int input;
	unsigned long flags;

	FUNC1(&vino_drvdata->input_lock, flags);
	input = vcs->input;
	index = FUNC4(vcs);
	FUNC2(&vino_drvdata->input_lock, flags);

	FUNC0("input = %d\n", input);

	if (input == VINO_INPUT_NONE) {
		return -EINVAL;
	}

	*i = index;

	return 0;
}