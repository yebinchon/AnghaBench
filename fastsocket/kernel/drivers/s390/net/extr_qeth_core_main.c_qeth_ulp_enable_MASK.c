#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qeth_cmd_buffer {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {scalar_t__ type; char* portname; scalar_t__ portno; } ;
struct TYPE_5__ {char cm_connection_r; char ulp_filter_w; } ;
struct TYPE_4__ {scalar_t__ layer2; } ;
struct qeth_card {TYPE_3__ info; TYPE_2__ token; TYPE_1__ options; int /*<<< orphan*/  write; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 scalar_t__ QETH_CARD_TYPE_OSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int QETH_MPC_TOKEN_LENGTH ; 
 char QETH_PROT_LAYER2 ; 
 char QETH_PROT_OSN2 ; 
 char QETH_PROT_TCPIP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SETUP ; 
 char* ULP_ENABLE ; 
 int ULP_ENABLE_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (struct qeth_card*,int,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_ulp_enable_cb ; 
 struct qeth_cmd_buffer* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct qeth_card *card)
{
	int rc;
	char prot_type;
	struct qeth_cmd_buffer *iob;

	/*FIXME: trace view callbacks*/
	FUNC0(SETUP, 2, "ulpenabl");

	iob = FUNC8(&card->write);
	FUNC6(iob->data, ULP_ENABLE, ULP_ENABLE_SIZE);

	*(FUNC3(iob->data)) =
		(__u8) card->info.portno;
	if (card->options.layer2)
		if (card->info.type == QETH_CARD_TYPE_OSN)
			prot_type = QETH_PROT_OSN2;
		else
			prot_type = QETH_PROT_LAYER2;
	else
		prot_type = QETH_PROT_TCPIP;

	FUNC6(FUNC5(iob->data), &prot_type, 1);
	FUNC6(FUNC1(iob->data),
	       &card->token.cm_connection_r, QETH_MPC_TOKEN_LENGTH);
	FUNC6(FUNC2(iob->data),
	       &card->token.ulp_filter_w, QETH_MPC_TOKEN_LENGTH);
	FUNC6(FUNC4(iob->data),
	       card->info.portname, 9);
	rc = FUNC7(card, ULP_ENABLE_SIZE, iob,
				    qeth_ulp_enable_cb, NULL);
	return rc;

}