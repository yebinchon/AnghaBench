#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int buf_count; } ;
struct TYPE_7__ {int no_out_queues; TYPE_4__** out_qs; TYPE_2__ in_buf_pool; TYPE_1__* in_q; } ;
struct qeth_card {TYPE_3__ qdio; } ;
struct qdio_buffer {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; int /*<<< orphan*/  set_pci_flags_count; int /*<<< orphan*/  used_buffers; scalar_t__ do_pack; scalar_t__ next_buf_to_fill; struct qeth_card* card; int /*<<< orphan*/ * bufs; int /*<<< orphan*/  qdio_bufs; } ;
struct TYPE_5__ {int next_buf_to_init; int /*<<< orphan*/ * bufs; int /*<<< orphan*/  qdio_bufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  QDIO_FLAG_SYNC_INPUT ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  QETH_OUT_Q_UNLOCKED ; 
 int /*<<< orphan*/  QETH_QDIO_BUF_EMPTY ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct qeth_card*) ; 

int FUNC10(struct qeth_card *card)
{
	int i, j;
	int rc;

	FUNC1(SETUP, 2, "initqdqs");

	/* inbound queue */
	FUNC5(card->qdio.in_q->qdio_bufs, 0,
	       QDIO_MAX_BUFFERS_PER_Q * sizeof(struct qdio_buffer));
	FUNC9(card);
	/*give only as many buffers to hardware as we have buffer pool entries*/
	for (i = 0; i < card->qdio.in_buf_pool.buf_count - 1; ++i)
		FUNC8(card, &card->qdio.in_q->bufs[i]);
	card->qdio.in_q->next_buf_to_init =
		card->qdio.in_buf_pool.buf_count - 1;
	rc = FUNC4(FUNC0(card), QDIO_FLAG_SYNC_INPUT, 0, 0,
		     card->qdio.in_buf_pool.buf_count - 1);
	if (rc) {
		FUNC2(SETUP, 2, "1err%d", rc);
		return rc;
	}

	/* completion */
	rc = FUNC7(card);
	if (rc) {
		return rc;
	}

	/* outbound queue */
	for (i = 0; i < card->qdio.no_out_queues; ++i) {
		FUNC5(card->qdio.out_qs[i]->qdio_bufs, 0,
		       QDIO_MAX_BUFFERS_PER_Q * sizeof(struct qdio_buffer));
		for (j = 0; j < QDIO_MAX_BUFFERS_PER_Q; ++j) {
			FUNC6(card->qdio.out_qs[i],
					card->qdio.out_qs[i]->bufs[j],
					QETH_QDIO_BUF_EMPTY);
		}
		card->qdio.out_qs[i]->card = card;
		card->qdio.out_qs[i]->next_buf_to_fill = 0;
		card->qdio.out_qs[i]->do_pack = 0;
		FUNC3(&card->qdio.out_qs[i]->used_buffers, 0);
		FUNC3(&card->qdio.out_qs[i]->set_pci_flags_count, 0);
		FUNC3(&card->qdio.out_qs[i]->state,
			   QETH_OUT_Q_UNLOCKED);
	}
	return 0;
}