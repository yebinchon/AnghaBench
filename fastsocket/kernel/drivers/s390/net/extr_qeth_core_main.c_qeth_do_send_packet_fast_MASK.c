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
struct sk_buff {int dummy; } ;
struct qeth_qdio_out_q {int next_buf_to_fill; int /*<<< orphan*/  state; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {int /*<<< orphan*/  state; } ;
struct qeth_hdr {int dummy; } ;
struct qeth_card {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  QETH_OUT_Q_LOCKED ; 
 scalar_t__ QETH_OUT_Q_UNLOCKED ; 
 scalar_t__ QETH_QDIO_BUF_EMPTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_qdio_out_q*,struct qeth_qdio_out_buffer*,struct sk_buff*,struct qeth_hdr*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_qdio_out_q*,int,int) ; 

int FUNC5(struct qeth_card *card,
		struct qeth_qdio_out_q *queue, struct sk_buff *skb,
		struct qeth_hdr *hdr, int elements_needed,
		int offset, int hd_len)
{
	struct qeth_qdio_out_buffer *buffer;
	int index;

	/* spin until we get the queue ... */
	while (FUNC0(&queue->state, QETH_OUT_Q_UNLOCKED,
			      QETH_OUT_Q_LOCKED) != QETH_OUT_Q_UNLOCKED);
	/* ... now we've got the queue */
	index = queue->next_buf_to_fill;
	buffer = queue->bufs[queue->next_buf_to_fill];
	/*
	 * check if buffer is empty to make sure that we do not 'overtake'
	 * ourselves and try to fill a buffer that is already primed
	 */
	if (FUNC1(&buffer->state) != QETH_QDIO_BUF_EMPTY)
		goto out;
	queue->next_buf_to_fill = (queue->next_buf_to_fill + 1) %
					  QDIO_MAX_BUFFERS_PER_Q;
	FUNC2(&queue->state, QETH_OUT_Q_UNLOCKED);
	FUNC3(queue, buffer, skb, hdr, offset, hd_len);
	FUNC4(queue, index, 1);
	return 0;
out:
	FUNC2(&queue->state, QETH_OUT_Q_UNLOCKED);
	return -EBUSY;
}