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
struct qeth_cmd_buffer {int /*<<< orphan*/  data; int /*<<< orphan*/  callback; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdu_hdr_ack; int /*<<< orphan*/  pdu_hdr; int /*<<< orphan*/  trans_hdr; } ;
struct qeth_card {TYPE_1__ seqno; int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  QETH_DBF_CTRL_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QETH_SEQ_NO_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_release_buffer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct qeth_card *card, int len,
		struct qeth_cmd_buffer *iob)
{
	FUNC5(&card->write, iob->data, len);
	iob->callback = qeth_release_buffer;

	FUNC4(FUNC3(iob->data),
	       &card->seqno.trans_hdr, QETH_SEQ_NO_LENGTH);
	card->seqno.trans_hdr++;
	FUNC4(FUNC2(iob->data),
	       &card->seqno.pdu_hdr, QETH_SEQ_NO_LENGTH);
	card->seqno.pdu_hdr++;
	FUNC4(FUNC1(iob->data),
	       &card->seqno.pdu_hdr_ack, QETH_SEQ_NO_LENGTH);
	FUNC0(CTRL, 2, iob->data, QETH_DBF_CTRL_LEN);
}