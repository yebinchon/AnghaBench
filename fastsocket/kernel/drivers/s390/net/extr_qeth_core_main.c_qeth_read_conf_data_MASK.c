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
struct TYPE_2__ {scalar_t__ cmd_code; int count; int /*<<< orphan*/  flags; scalar_t__ cda; } ;
struct qeth_channel {scalar_t__ state; int /*<<< orphan*/  ccwdev; TYPE_1__ ccw; } ;
struct qeth_card {int /*<<< orphan*/  wait_q; struct qeth_channel data; } ;
struct ciw {scalar_t__ cmd; int count; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_FLAG_SLI ; 
 scalar_t__ CH_STATE_DOWN ; 
 scalar_t__ CH_STATE_RCD ; 
 scalar_t__ CH_STATE_RCD_DONE ; 
 int /*<<< orphan*/  CIW_TYPE_RCD ; 
 int EIO ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  LPM_ANYPATH ; 
 int /*<<< orphan*/  QETH_RCD_PARM ; 
 int /*<<< orphan*/  QETH_RCD_TIMEOUT ; 
 scalar_t__ FUNC0 (char*) ; 
 struct ciw* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct qeth_card *card, void **buffer,
			       int *length)
{
	struct ciw *ciw;
	char *rcd_buf;
	int ret;
	struct qeth_channel *channel = &card->data;
	unsigned long flags;

	/*
	 * scan for RCD command in extended SenseID data
	 */
	ciw = FUNC1(channel->ccwdev, CIW_TYPE_RCD);
	if (!ciw || ciw->cmd == 0)
		return -EOPNOTSUPP;
	rcd_buf = FUNC5(ciw->count, GFP_KERNEL | GFP_DMA);
	if (!rcd_buf)
		return -ENOMEM;

	channel->ccw.cmd_code = ciw->cmd;
	channel->ccw.cda = (__u32) FUNC0(rcd_buf);
	channel->ccw.count = ciw->count;
	channel->ccw.flags = CCW_FLAG_SLI;
	channel->state = CH_STATE_RCD;
	FUNC6(FUNC3(channel->ccwdev), flags);
	ret = FUNC2(channel->ccwdev, &channel->ccw,
				       QETH_RCD_PARM, LPM_ANYPATH, 0,
				       QETH_RCD_TIMEOUT);
	FUNC7(FUNC3(channel->ccwdev), flags);
	if (!ret)
		FUNC8(card->wait_q,
			   (channel->state == CH_STATE_RCD_DONE ||
			    channel->state == CH_STATE_DOWN));
	if (channel->state == CH_STATE_DOWN)
		ret = -EIO;
	else
		channel->state = CH_STATE_DOWN;
	if (ret) {
		FUNC4(rcd_buf);
		*buffer = NULL;
		*length = 0;
	} else {
		*length = ciw->count;
		*buffer = rcd_buf;
	}
	return ret;
}