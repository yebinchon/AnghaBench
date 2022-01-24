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
struct mlx4_srq_context {int logstride; int log_page_size; int /*<<< orphan*/  state_logsize_srqn; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mlx4_srq_context *srqc)
{
	int log_srq_size = (FUNC0(srqc->state_logsize_srqn) >> 24) & 0xf;
	int log_rq_stride = srqc->logstride & 7;
	int page_shift = (srqc->log_page_size & 0x3f) + 12;

	if (log_srq_size + log_rq_stride + 4 < page_shift)
		return 1;

	return 1 << (log_srq_size + log_rq_stride + 4 - page_shift);
}