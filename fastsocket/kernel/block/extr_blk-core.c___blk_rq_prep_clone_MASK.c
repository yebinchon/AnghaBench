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
struct request {int cmd_flags; int /*<<< orphan*/  extra_len; int /*<<< orphan*/  ioprio; int /*<<< orphan*/  nr_phys_segments; int /*<<< orphan*/  __data_len; int /*<<< orphan*/  __sector; int /*<<< orphan*/  cmd_type; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int REQ_CLONE_MASK ; 
 int REQ_NOMERGE ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 

__attribute__((used)) static void FUNC2(struct request *dst, struct request *src)
{
	dst->cpu = src->cpu;
	dst->cmd_flags = (src->cmd_flags & REQ_CLONE_MASK) | REQ_NOMERGE;
	dst->cmd_type = src->cmd_type;
	dst->__sector = FUNC1(src);
	dst->__data_len = FUNC0(src);
	dst->nr_phys_segments = src->nr_phys_segments;
	dst->ioprio = src->ioprio;
	dst->extra_len = src->extra_len;
}