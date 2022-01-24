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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct qeth_cmd_buffer {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {scalar_t__ ulp_connection_r; } ;
struct qeth_card {TYPE_1__ token; } ;

/* Variables and functions */
 scalar_t__* IPA_PDU_HEADER ; 
 int IPA_PDU_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int QETH_MPC_TOKEN_LENGTH ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC7 (struct qeth_card*,int,struct qeth_cmd_buffer*,int (*) (struct qeth_card*,struct qeth_reply*,unsigned long),void*) ; 

__attribute__((used)) static int FUNC8(struct qeth_card *card,
		struct qeth_cmd_buffer *iob, int len,
		int (*reply_cb)(struct qeth_card *, struct qeth_reply *,
			unsigned long),
		void *reply_param)
{
	u16 s1, s2;

	FUNC0(TRACE, 4, "sendsnmp");

	FUNC6(iob->data, IPA_PDU_HEADER, IPA_PDU_HEADER_SIZE);
	FUNC6(FUNC1(iob->data),
	       &card->token.ulp_connection_r, QETH_MPC_TOKEN_LENGTH);
	/* adjust PDU length fields in IPA_PDU_HEADER */
	s1 = (u32) IPA_PDU_HEADER_SIZE + len;
	s2 = (u32) len;
	FUNC6(FUNC5(iob->data), &s1, 2);
	FUNC6(FUNC2(iob->data), &s2, 2);
	FUNC6(FUNC3(iob->data), &s2, 2);
	FUNC6(FUNC4(iob->data), &s2, 2);
	return FUNC7(card, IPA_PDU_HEADER_SIZE + len, iob,
				      reply_cb, reply_param);
}