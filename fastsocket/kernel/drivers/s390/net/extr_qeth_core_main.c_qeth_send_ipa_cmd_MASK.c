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
struct qeth_cmd_buffer {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ layer2; } ;
struct qeth_card {TYPE_2__ info; TYPE_1__ options; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  IPA_CMD_LENGTH ; 
 scalar_t__ QETH_CARD_TYPE_OSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 char QETH_PROT_LAYER2 ; 
 char QETH_PROT_OSN2 ; 
 char QETH_PROT_TCPIP ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,struct qeth_cmd_buffer*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int FUNC4 (struct qeth_card*,int /*<<< orphan*/ ,struct qeth_cmd_buffer*,int (*) (struct qeth_card*,struct qeth_reply*,unsigned long),void*) ; 

int FUNC5(struct qeth_card *card, struct qeth_cmd_buffer *iob,
		int (*reply_cb)(struct qeth_card *, struct qeth_reply*,
			unsigned long),
		void *reply_param)
{
	int rc;
	char prot_type;

	FUNC0(TRACE, 4, "sendipa");

	if (card->options.layer2)
		if (card->info.type == QETH_CARD_TYPE_OSN)
			prot_type = QETH_PROT_OSN2;
		else
			prot_type = QETH_PROT_LAYER2;
	else
		prot_type = QETH_PROT_TCPIP;
	FUNC2(card, iob, prot_type);
	rc = FUNC4(card, IPA_CMD_LENGTH,
						iob, reply_cb, reply_param);
	if (rc == -ETIME) {
		FUNC1(card);
		FUNC3(card);
	}
	return rc;
}