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
struct be_ctrl_info {unsigned int* mcc_tag; size_t mcc_free_index; int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  mcc_tag_available; } ;

/* Variables and functions */
 int MAX_MCC_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct be_ctrl_info *ctrl, unsigned int tag)
{
	FUNC0(&ctrl->mbox_lock);
	tag = tag & 0x000000FF;
	ctrl->mcc_tag[ctrl->mcc_free_index] = tag;
	if (ctrl->mcc_free_index == (MAX_MCC_CMD - 1))
		ctrl->mcc_free_index = 0;
	else
		ctrl->mcc_free_index++;
	ctrl->mcc_tag_available++;
	FUNC1(&ctrl->mbox_lock);
}