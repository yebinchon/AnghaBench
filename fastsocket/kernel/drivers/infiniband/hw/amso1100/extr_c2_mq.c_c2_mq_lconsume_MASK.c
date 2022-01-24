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
typedef  int /*<<< orphan*/  u32 ;
struct c2_mq {scalar_t__ magic; scalar_t__ type; int q_size; int /*<<< orphan*/ * shared; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ C2_MQ_ADAPTER_TARGET ; 
 scalar_t__ C2_MQ_MAGIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct c2_mq*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct c2_mq *q, u32 wqe_count)
{
	FUNC0(q->magic != C2_MQ_MAGIC);
	FUNC0(q->type != C2_MQ_ADAPTER_TARGET);

	while (wqe_count--) {
		FUNC0(FUNC2(q));
		*q->shared = FUNC3((FUNC1(*q->shared)+1) % q->q_size);
	}
}