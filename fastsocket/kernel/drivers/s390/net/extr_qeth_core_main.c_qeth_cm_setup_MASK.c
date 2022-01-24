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
struct TYPE_2__ {int /*<<< orphan*/  cm_filter_r; int /*<<< orphan*/  cm_connection_w; int /*<<< orphan*/  issuer_rm_r; } ;
struct qeth_card {TYPE_1__ token; int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int /*<<< orphan*/ * CM_SETUP ; 
 int /*<<< orphan*/  CM_SETUP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_MPC_TOKEN_LENGTH ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_cm_setup_cb ; 
 int FUNC5 (struct qeth_card*,int /*<<< orphan*/ ,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct qeth_cmd_buffer* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct qeth_card *card)
{
	int rc;
	struct qeth_cmd_buffer *iob;

	FUNC3(SETUP, 2, "cmsetup");

	iob = FUNC6(&card->write);
	FUNC4(iob->data, CM_SETUP, CM_SETUP_SIZE);
	FUNC4(FUNC1(iob->data),
	       &card->token.issuer_rm_r, QETH_MPC_TOKEN_LENGTH);
	FUNC4(FUNC0(iob->data),
	       &card->token.cm_connection_w, QETH_MPC_TOKEN_LENGTH);
	FUNC4(FUNC2(iob->data),
	       &card->token.cm_filter_r, QETH_MPC_TOKEN_LENGTH);
	rc = FUNC5(card, CM_SETUP_SIZE, iob,
				    qeth_cm_setup_cb, NULL);
	return rc;

}