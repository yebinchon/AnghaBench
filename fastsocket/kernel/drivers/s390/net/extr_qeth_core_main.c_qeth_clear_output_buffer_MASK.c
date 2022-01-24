#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qeth_qdio_out_q {int /*<<< orphan*/  card; int /*<<< orphan*/  set_pci_flags_count; } ;
struct qeth_qdio_out_buffer {int /*<<< orphan*/  state; scalar_t__ next_element_to_fill; TYPE_2__* buffer; scalar_t__* is_header; } ;
typedef  enum qeth_qdio_buffer_states { ____Placeholder_qeth_qdio_buffer_states } qeth_qdio_buffer_states ;
struct TYPE_4__ {TYPE_1__* element; } ;
struct TYPE_3__ {int sflags; scalar_t__ eflags; int /*<<< orphan*/ * addr; scalar_t__ length; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int QETH_QDIO_BUF_EMPTY ; 
 int SBAL_SFLAGS0_PCI_REQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_core_header_cache ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_qdio_out_buffer*) ; 

__attribute__((used)) static void FUNC5(struct qeth_qdio_out_q *queue,
		struct qeth_qdio_out_buffer *buf,
		enum qeth_qdio_buffer_states newbufstate)
{
	int i;

	/* is PCI flag set on buffer? */
	if (buf->buffer->element[0].sflags & SBAL_SFLAGS0_PCI_REQ)
		FUNC1(&queue->set_pci_flags_count);

	if (newbufstate == QETH_QDIO_BUF_EMPTY) {
		FUNC4(buf);
	}

	for (i = 0; i < FUNC0(queue->card); ++i) {
		if (buf->buffer->element[i].addr && buf->is_header[i])
			FUNC3(qeth_core_header_cache,
				buf->buffer->element[i].addr);
		buf->is_header[i] = 0;
		buf->buffer->element[i].length = 0;
		buf->buffer->element[i].addr = NULL;
		buf->buffer->element[i].eflags = 0;
		buf->buffer->element[i].sflags = 0;
	}
	buf->buffer->element[15].eflags = 0;
	buf->buffer->element[15].sflags = 0;
	buf->next_element_to_fill = 0;
	FUNC2(&buf->state, newbufstate);
}