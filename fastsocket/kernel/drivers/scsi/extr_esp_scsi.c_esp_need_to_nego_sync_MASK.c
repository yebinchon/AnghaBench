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
struct scsi_target {int dummy; } ;
struct esp_target_data {scalar_t__ nego_goal_offset; scalar_t__ nego_goal_period; struct scsi_target* starget; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_target*) ; 
 scalar_t__ FUNC1 (struct scsi_target*) ; 

__attribute__((used)) static int FUNC2(struct esp_target_data *tp)
{
	struct scsi_target *target = tp->starget;

	/* When offset is zero, period is "don't care".  */
	if (!FUNC0(target) && !tp->nego_goal_offset)
		return 0;

	if (FUNC0(target) == tp->nego_goal_offset &&
	    FUNC1(target) == tp->nego_goal_period)
		return 0;

	return 1;
}