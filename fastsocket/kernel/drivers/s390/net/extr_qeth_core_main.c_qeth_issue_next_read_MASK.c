#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qeth_cmd_buffer {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/  irq_pending; int /*<<< orphan*/  ccw; int /*<<< orphan*/  ccwdev; } ;
struct qeth_card {int read_or_write_problem; int /*<<< orphan*/  wait_q; TYPE_2__ read; TYPE_1__* gdev; } ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CH_STATE_UP ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  QETH_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct qeth_cmd_buffer* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct qeth_card *card)
{
	int rc;
	struct qeth_cmd_buffer *iob;

	FUNC1(TRACE, 5, "issnxrd");
	if (card->read.state != CH_STATE_UP)
		return -EIO;
	iob = FUNC6(&card->read);
	if (!iob) {
		FUNC5(&card->gdev->dev, "The qeth device driver "
			"failed to recover an error on the device\n");
		FUNC0(2, "%s issue_next_read failed: no iob "
			"available\n", FUNC4(&card->gdev->dev));
		return -ENOMEM;
	}
	FUNC8(&card->read, iob->data, QETH_BUFSIZE);
	FUNC1(TRACE, 6, "noirqpnd");
	rc = FUNC3(card->read.ccwdev, &card->read.ccw,
			      (addr_t) iob, 0, 0);
	if (rc) {
		FUNC0(2, "%s error in starting next read ccw! "
			"rc=%i\n", FUNC4(&card->gdev->dev), rc);
		FUNC2(&card->read.irq_pending, 0);
		card->read_or_write_problem = 1;
		FUNC7(card);
		FUNC9(&card->wait_q);
	}
	return rc;
}