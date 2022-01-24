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
typedef  void c2wr_hdr ;
struct TYPE_2__ {void* host; } ;
struct c2_mq {scalar_t__ magic; scalar_t__ type; int priv; int msg_size; TYPE_1__ msg_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ C2_MQ_ADAPTER_TARGET ; 
 scalar_t__ C2_MQ_MAGIC ; 
 int /*<<< orphan*/  CCWR_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct c2_mq*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void *FUNC4(struct c2_mq *q)
{
	FUNC0(q->magic != C2_MQ_MAGIC);
	FUNC0(q->type != C2_MQ_ADAPTER_TARGET);

	if (FUNC2(q)) {
		return NULL;
	} else {
#ifdef DEBUG
		struct c2wr_hdr *m =
		    (struct c2wr_hdr *) (q->msg_pool.host + q->priv * q->msg_size);
#ifdef CCMSGMAGIC
		BUG_ON(m->magic != be32_to_cpu(~CCWR_MAGIC));
		m->magic = cpu_to_be32(CCWR_MAGIC);
#endif
		return m;
#else
		return q->msg_pool.host + q->priv * q->msg_size;
#endif
	}
}