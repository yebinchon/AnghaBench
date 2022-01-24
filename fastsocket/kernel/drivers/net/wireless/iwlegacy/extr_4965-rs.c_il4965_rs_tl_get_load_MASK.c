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
typedef  size_t u8 ;
typedef  int u32 ;
struct il_traffic_load {int total; int /*<<< orphan*/  time_stamp; int /*<<< orphan*/  queue_count; } ;
struct il_lq_sta {struct il_traffic_load* load; } ;
typedef  int s32 ;

/* Variables and functions */
 size_t TID_MAX_LOAD_COUNT ; 
 int TID_QUEUE_CELL_SPACING ; 
 int TID_QUEUE_MAX_SIZE ; 
 int TID_ROUND_VALUE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct il_traffic_load*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32
FUNC3(struct il_lq_sta *lq_data, u8 tid)
{
	u32 curr_time = FUNC2(jiffies);
	u32 time_diff;
	s32 idx;
	struct il_traffic_load *tl = NULL;

	if (tid >= TID_MAX_LOAD_COUNT)
		return 0;

	tl = &(lq_data->load[tid]);

	curr_time -= curr_time % TID_ROUND_VALUE;

	if (!(tl->queue_count))
		return 0;

	time_diff = FUNC0(tl->time_stamp, curr_time);
	idx = time_diff / TID_QUEUE_CELL_SPACING;

	/* The history is too long: remove data that is older than */
	/* TID_MAX_TIME_DIFF */
	if (idx >= TID_QUEUE_MAX_SIZE)
		FUNC1(tl, curr_time);

	return tl->total;
}