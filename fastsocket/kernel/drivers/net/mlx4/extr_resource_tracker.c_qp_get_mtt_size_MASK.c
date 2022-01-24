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
struct mlx4_qp_context {int log_page_size; int sq_size_stride; int rq_size_stride; int /*<<< orphan*/  params2; int /*<<< orphan*/  local_qpn; int /*<<< orphan*/  flags; int /*<<< orphan*/  srqn; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct mlx4_qp_context *qpc)
{
	int page_shift = (qpc->log_page_size & 0x3f) + 12;
	int log_sq_size = (qpc->sq_size_stride >> 3) & 0xf;
	int log_sq_sride = qpc->sq_size_stride & 7;
	int log_rq_size = (qpc->rq_size_stride >> 3) & 0xf;
	int log_rq_stride = qpc->rq_size_stride & 7;
	int srq = (FUNC0(qpc->srqn) >> 24) & 1;
	int rss = (FUNC0(qpc->flags) >> 13) & 1;
	int xrc = (FUNC0(qpc->local_qpn) >> 23) & 1;
	int sq_size;
	int rq_size;
	int total_pages;
	int total_mem;
	int page_offset = (FUNC0(qpc->params2) >> 6) & 0x3f;

	sq_size = 1 << (log_sq_size + log_sq_sride + 4);
	rq_size = (srq|rss|xrc) ? 0 : (1 << (log_rq_size + log_rq_stride + 4));
	total_mem = sq_size + rq_size;
	total_pages =
		FUNC1((total_mem + (page_offset << 6)) >>
				   page_shift);

	return total_pages;
}