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
struct vino_channel_settings {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int VINO_INPUT_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 struct vino_channel_settings* FUNC1 (struct file*) ; 
 int FUNC2 (struct vino_channel_settings*,unsigned int) ; 
 int FUNC3 (struct vino_channel_settings*,int) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *__fh,
			     unsigned int i)
{
	struct vino_channel_settings *vcs = FUNC1(file);
	int input;
	FUNC0("requested input = %d\n", i);

	input = FUNC2(vcs, i);
	if (input == VINO_INPUT_NONE)
		return -EINVAL;

	return FUNC3(vcs, input);
}