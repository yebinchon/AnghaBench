#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct qeth_qdio_out_q {int queue_no; TYPE_9__* card; int /*<<< orphan*/  used_buffers; int /*<<< orphan*/  set_pci_flags_count; int /*<<< orphan*/  do_pack; TYPE_1__* bufstates; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {int next_element_to_fill; TYPE_4__* buffer; } ;
struct TYPE_19__ {int bufs_sent; scalar_t__ outbound_do_qdio_start_time; int /*<<< orphan*/  outbound_do_qdio_time; int /*<<< orphan*/  outbound_do_qdio_cnt; } ;
struct TYPE_18__ {scalar_t__ performance_stats; } ;
struct TYPE_17__ {int tx_errors; } ;
struct TYPE_13__ {scalar_t__ type; } ;
struct TYPE_20__ {TYPE_8__ perf_stats; TYPE_7__ options; TYPE_6__ stats; TYPE_5__* dev; TYPE_2__ info; } ;
struct TYPE_16__ {int /*<<< orphan*/  trans_start; } ;
struct TYPE_15__ {TYPE_3__* element; } ;
struct TYPE_14__ {int /*<<< orphan*/  sflags; int /*<<< orphan*/  eflags; } ;
struct TYPE_12__ {struct qeth_qdio_out_buffer* user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_9__*) ; 
 int FUNC1 (TYPE_9__*) ; 
 int QDIO_ERROR_SIGA_TARGET ; 
 unsigned int QDIO_FLAG_PCI_OUT ; 
 unsigned int QDIO_FLAG_SYNC_OUTPUT ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 scalar_t__ QETH_CARD_TYPE_IQD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ QETH_HIGH_WATERMARK_PACK ; 
 scalar_t__ QETH_WATERMARK_PACK_FUZZ ; 
 int /*<<< orphan*/  SBAL_EFLAGS_LAST_ENTRY ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_PCI_REQ ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*) ; 

__attribute__((used)) static void FUNC10(struct qeth_qdio_out_q *queue, int index,
			       int count)
{
	struct qeth_qdio_out_buffer *buf;
	int rc;
	int i;
	unsigned int qdio_flags;

	for (i = index; i < index + count; ++i) {
		int bidx = i % QDIO_MAX_BUFFERS_PER_Q;
		buf = queue->bufs[bidx];
		buf->buffer->element[buf->next_element_to_fill - 1].eflags |=
				SBAL_EFLAGS_LAST_ENTRY;

		if (queue->bufstates)
			queue->bufstates[bidx].user = buf;

		if (queue->card->info.type == QETH_CARD_TYPE_IQD)
			continue;

		if (!queue->do_pack) {
			if ((FUNC6(&queue->used_buffers) >=
				(QETH_HIGH_WATERMARK_PACK -
				 QETH_WATERMARK_PACK_FUZZ)) &&
			    !FUNC6(&queue->set_pci_flags_count)) {
				/* it's likely that we'll go to packing
				 * mode soon */
				FUNC5(&queue->set_pci_flags_count);
				buf->buffer->element[0].sflags |= SBAL_SFLAGS0_PCI_REQ;
			}
		} else {
			if (!FUNC6(&queue->set_pci_flags_count)) {
				/*
				 * there's no outstanding PCI any more, so we
				 * have to request a PCI to be sure the the PCI
				 * will wake at some time in the future then we
				 * can flush packed buffers that might still be
				 * hanging around, which can happen if no
				 * further send was requested by the stack
				 */
				FUNC5(&queue->set_pci_flags_count);
				buf->buffer->element[0].sflags |= SBAL_SFLAGS0_PCI_REQ;
			}
		}
	}

	queue->card->dev->trans_start = jiffies;
	if (queue->card->options.performance_stats) {
		queue->card->perf_stats.outbound_do_qdio_cnt++;
		queue->card->perf_stats.outbound_do_qdio_start_time =
			FUNC8();
	}
	qdio_flags = QDIO_FLAG_SYNC_OUTPUT;
	if (FUNC6(&queue->set_pci_flags_count))
		qdio_flags |= QDIO_FLAG_PCI_OUT;
	rc = FUNC7(FUNC0(queue->card), qdio_flags,
		     queue->queue_no, index, count);
	if (queue->card->options.performance_stats)
		queue->card->perf_stats.outbound_do_qdio_time +=
			FUNC8() -
			queue->card->perf_stats.outbound_do_qdio_start_time;
	FUNC4(count, &queue->used_buffers);
	if (rc) {
		queue->card->stats.tx_errors += count;
		/* ignore temporary SIGA errors without busy condition */
		if (rc == QDIO_ERROR_SIGA_TARGET)
			return;
		FUNC2(TRACE, 2, "flushbuf");
		FUNC3(TRACE, 2, " q%d", queue->queue_no);
		FUNC3(TRACE, 2, " idx%d", index);
		FUNC3(TRACE, 2, " c%d", count);
		FUNC3(TRACE, 2, " err%d", rc);
		FUNC3(TRACE, 2, "%s", FUNC1(queue->card));

		/* this must not happen under normal circumstances. if it
		 * happens something is really wrong -> recover */
		FUNC9(queue->card);
		return;
	}
	if (queue->card->options.performance_stats)
		queue->card->perf_stats.bufs_sent += count;
}