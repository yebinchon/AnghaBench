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
struct bop_ring_buffer {int begin; struct block_op* bops; } ;
struct block_op {int /*<<< orphan*/  block; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ FUNC0 (struct bop_ring_buffer*) ; 
 int FUNC1 (struct bop_ring_buffer*,int) ; 

__attribute__((used)) static int FUNC2(struct bop_ring_buffer *brb, struct block_op *result)
{
	struct block_op *bop;

	if (FUNC0(brb))
		return -ENODATA;

	bop = brb->bops + brb->begin;
	result->type = bop->type;
	result->block = bop->block;

	brb->begin = FUNC1(brb, brb->begin);

	return 0;
}