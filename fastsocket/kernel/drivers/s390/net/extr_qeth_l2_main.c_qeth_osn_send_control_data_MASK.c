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
struct qeth_cmd_buffer {int /*<<< orphan*/  channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_pending; int /*<<< orphan*/  ccwdev; int /*<<< orphan*/  ccw; } ;
struct qeth_card {int /*<<< orphan*/  wait_q; TYPE_1__ write; } ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  TRACE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*,int,struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct qeth_card *card, int len,
			   struct qeth_cmd_buffer *iob)
{
	unsigned long flags;
	int rc = 0;

	FUNC1(TRACE, 5, "osndctrd");

	FUNC11(card->wait_q,
		   FUNC3(&card->write.irq_pending, 0, 1) == 0);
	FUNC7(card, len, iob);
	FUNC1(TRACE, 6, "osnoirqp");
	FUNC9(FUNC6(card->write.ccwdev), flags);
	rc = FUNC5(card->write.ccwdev, &card->write.ccw,
			      (addr_t) iob, 0, 0);
	FUNC10(FUNC6(card->write.ccwdev), flags);
	if (rc) {
		FUNC0(2, "qeth_osn_send_control_data: "
			   "ccw_device_start rc = %i\n", rc);
		FUNC2(TRACE, 2, " err%d", rc);
		FUNC8(iob->channel, iob);
		FUNC4(&card->write.irq_pending, 0);
		FUNC12(&card->wait_q);
	}
	return rc;
}