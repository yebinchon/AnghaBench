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
struct vino_channel_settings {int dummy; } ;
typedef  int __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  input_lock; scalar_t__ camera; scalar_t__ decoder; } ;

/* Variables and functions */
 int VINO_INPUT_COMPOSITE ; 
 int VINO_INPUT_D1 ; 
 int VINO_INPUT_NONE ; 
 int VINO_INPUT_SVIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* vino_drvdata ; 

__attribute__((used)) static int FUNC2(struct vino_channel_settings *vcs, __u32 index)
{
	int input = VINO_INPUT_NONE;
	unsigned long flags;

	FUNC0(&vino_drvdata->input_lock, flags);
	if (vino_drvdata->decoder && vino_drvdata->camera) {
		switch (index) {
		case 0:
			input = VINO_INPUT_COMPOSITE;
			break;
		case 1:
			input = VINO_INPUT_SVIDEO;
			break;
		case 2:
			input = VINO_INPUT_D1;
			break;
		}
	} else if (vino_drvdata->decoder) {
		switch (index) {
		case 0:
			input = VINO_INPUT_COMPOSITE;
			break;
		case 1:
			input = VINO_INPUT_SVIDEO;
			break;
		}
	} else if (vino_drvdata->camera) {
		switch (index) {
		case 0:
			input = VINO_INPUT_D1;
			break;
		}
	}
	FUNC1(&vino_drvdata->input_lock, flags);

	return input;
}