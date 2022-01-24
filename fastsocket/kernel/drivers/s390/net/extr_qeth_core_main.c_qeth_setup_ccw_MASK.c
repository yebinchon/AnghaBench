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
struct TYPE_2__ {void* cda; void* count; } ;
struct qeth_channel {TYPE_1__ ccw; int /*<<< orphan*/  ccwdev; } ;
struct qeth_card {struct qeth_channel read; } ;
struct ccw1 {int dummy; } ;
typedef  void* __u32 ;

/* Variables and functions */
 struct qeth_card* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  READ_CCW ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  WRITE_CCW ; 
 scalar_t__ FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct qeth_channel *channel, unsigned char *iob,
		__u32 len)
{
	struct qeth_card *card;

	FUNC1(TRACE, 4, "setupccw");
	card = FUNC0(channel->ccwdev);
	if (channel == &card->read)
		FUNC3(&channel->ccw, READ_CCW, sizeof(struct ccw1));
	else
		FUNC3(&channel->ccw, WRITE_CCW, sizeof(struct ccw1));
	channel->ccw.count = len;
	channel->ccw.cda = (__u32) FUNC2(iob);
}