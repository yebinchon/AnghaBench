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
struct TYPE_2__ {int num_ah; int /*<<< orphan*/  lock; struct ocrdma_av* va; } ;
struct ocrdma_dev {TYPE_1__ av_tbl; } ;
struct ocrdma_av {scalar_t__ valid; } ;
struct ocrdma_ah {int id; struct ocrdma_av* av; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ OCRDMA_AV_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC2(struct ocrdma_dev *dev, struct ocrdma_ah *ah)
{
	int i;
	int status = -EINVAL;
	struct ocrdma_av *av;
	unsigned long flags;

	av = dev->av_tbl.va;
	FUNC0(&dev->av_tbl.lock, flags);
	for (i = 0; i < dev->av_tbl.num_ah; i++) {
		if (av->valid == 0) {
			av->valid = OCRDMA_AV_VALID;
			ah->av = av;
			ah->id = i;
			status = 0;
			break;
		}
		av++;
	}
	if (i == dev->av_tbl.num_ah)
		status = -EAGAIN;
	FUNC1(&dev->av_tbl.lock, flags);
	return status;
}