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
struct qeth_cmd_buffer {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  ulp_connection_r; } ;
struct qeth_card {TYPE_1__ token; } ;

/* Variables and functions */
 int /*<<< orphan*/ * IPA_PDU_HEADER ; 
 scalar_t__ IPA_PDU_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ QETH_MPC_TOKEN_LENGTH ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (struct qeth_card*,scalar_t__,struct qeth_cmd_buffer*,int (*) (struct qeth_card*,struct qeth_reply*,unsigned long),void*) ; 

__attribute__((used)) static int FUNC4(struct qeth_card *card,
		struct qeth_cmd_buffer *iob, int len,
		int (*reply_cb)(struct qeth_card *, struct qeth_reply *,
			unsigned long),
		void *reply_param)
{
	FUNC0(TRACE, 4, "sendarp");

	FUNC2(iob->data, IPA_PDU_HEADER, IPA_PDU_HEADER_SIZE);
	FUNC2(FUNC1(iob->data),
	       &card->token.ulp_connection_r, QETH_MPC_TOKEN_LENGTH);
	return FUNC3(card, IPA_PDU_HEADER_SIZE + len, iob,
				      reply_cb, reply_param);
}