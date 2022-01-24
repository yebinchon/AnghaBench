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
struct qeth_cmd_buffer {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int cula; scalar_t__ unit_addr2; } ;
struct TYPE_3__ {scalar_t__ ulp_filter_r; scalar_t__ ulp_connection_w; scalar_t__ cm_connection_r; } ;
struct qeth_card {TYPE_2__ info; TYPE_1__ token; int /*<<< orphan*/  write; } ;
struct ccw_dev_id {scalar_t__ devno; } ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int QETH_MPC_TOKEN_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SETUP ; 
 scalar_t__* ULP_SETUP ; 
 int ULP_SETUP_SIZE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ccw_dev_id*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC9 (struct qeth_card*,int,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_ulp_setup_cb ; 
 struct qeth_cmd_buffer* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct qeth_card *card)
{
	int rc;
	__u16 temp;
	struct qeth_cmd_buffer *iob;
	struct ccw_dev_id dev_id;

	FUNC1(SETUP, 2, "ulpsetup");

	iob = FUNC10(&card->write);
	FUNC8(iob->data, ULP_SETUP, ULP_SETUP_SIZE);

	FUNC8(FUNC4(iob->data),
	       &card->token.cm_connection_r, QETH_MPC_TOKEN_LENGTH);
	FUNC8(FUNC2(iob->data),
	       &card->token.ulp_connection_w, QETH_MPC_TOKEN_LENGTH);
	FUNC8(FUNC5(iob->data),
	       &card->token.ulp_filter_r, QETH_MPC_TOKEN_LENGTH);

	FUNC7(FUNC0(card), &dev_id);
	FUNC8(FUNC3(iob->data), &dev_id.devno, 2);
	temp = (card->info.cula << 8) + card->info.unit_addr2;
	FUNC8(FUNC6(iob->data), &temp, 2);
	rc = FUNC9(card, ULP_SETUP_SIZE, iob,
				    qeth_ulp_setup_cb, NULL);
	return rc;
}