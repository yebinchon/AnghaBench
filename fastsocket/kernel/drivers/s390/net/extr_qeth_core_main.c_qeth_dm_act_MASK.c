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
struct TYPE_2__ {int /*<<< orphan*/  ulp_connection_r; int /*<<< orphan*/  cm_connection_r; } ;
struct qeth_card {TYPE_1__ token; int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int /*<<< orphan*/ * DM_ACT ; 
 int /*<<< orphan*/  DM_ACT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QETH_MPC_TOKEN_LENGTH ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qeth_card*,int /*<<< orphan*/ ,struct qeth_cmd_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct qeth_cmd_buffer* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qeth_card *card)
{
	int rc;
	struct qeth_cmd_buffer *iob;

	FUNC0(SETUP, 2, "dmact");

	iob = FUNC5(&card->write);
	FUNC3(iob->data, DM_ACT, DM_ACT_SIZE);

	FUNC3(FUNC2(iob->data),
	       &card->token.cm_connection_r, QETH_MPC_TOKEN_LENGTH);
	FUNC3(FUNC1(iob->data),
	       &card->token.ulp_connection_r, QETH_MPC_TOKEN_LENGTH);
	rc = FUNC4(card, DM_ACT_SIZE, iob, NULL, NULL);
	return rc;
}