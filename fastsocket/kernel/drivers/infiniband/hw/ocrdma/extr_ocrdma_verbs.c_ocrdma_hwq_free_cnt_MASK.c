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
struct ocrdma_qp_hwq_info {int head; int tail; int max_cnt; } ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(struct ocrdma_qp_hwq_info *q)
{
	int free_cnt;
	if (q->head >= q->tail)
		free_cnt = (q->max_cnt - q->head) + q->tail;
	else
		free_cnt = q->tail - q->head;
	return free_cnt;
}