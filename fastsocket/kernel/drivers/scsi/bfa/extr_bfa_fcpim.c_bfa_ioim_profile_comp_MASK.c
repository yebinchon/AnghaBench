#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct scsi_cmnd {int dummy; } ;
struct bfa_itnim_latency_s {size_t* min; size_t* max; int /*<<< orphan*/ * avg; int /*<<< orphan*/ * count; } ;
struct bfa_ioim_s {TYPE_2__* itnim; scalar_t__ dio; scalar_t__ start_time; } ;
struct TYPE_3__ {struct bfa_itnim_latency_s io_latency; } ;
struct TYPE_4__ {TYPE_1__ ioprofile; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 

void
FUNC3(struct bfa_ioim_s *ioim)
{
	struct bfa_itnim_latency_s *io_lat =
			&(ioim->itnim->ioprofile.io_latency);
	u32 val, idx;

	val = (u32)(jiffies - ioim->start_time);
	idx = FUNC0(FUNC2((struct scsi_cmnd *)ioim->dio));
	FUNC1(ioim->itnim, idx);

	io_lat->count[idx]++;
	io_lat->min[idx] = (io_lat->min[idx] < val) ? io_lat->min[idx] : val;
	io_lat->max[idx] = (io_lat->max[idx] > val) ? io_lat->max[idx] : val;
	io_lat->avg[idx] += val;
}