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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * consumer; int /*<<< orphan*/ * producer; } ;
struct aac_queue {scalar_t__ entries; TYPE_1__ headers; } ;
struct aac_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int HostNormCmdNotFull ; 
#define  HostNormCmdQueue 129 
 int HostNormRespNotFull ; 
#define  HostNormRespQueue 128 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct aac_dev * dev, struct aac_queue *q, u32 qid)
{
	int wasfull = 0;
	u32 notify;

	if ((FUNC4(*q->headers.producer)+1) == FUNC4(*q->headers.consumer))
		wasfull = 1;

	if (FUNC4(*q->headers.consumer) >= q->entries)
		*q->headers.consumer = FUNC2(1);
	else
		FUNC3(q->headers.consumer, 1);

	if (wasfull) {
		switch (qid) {

		case HostNormCmdQueue:
			notify = HostNormCmdNotFull;
			break;
		case HostNormRespQueue:
			notify = HostNormRespNotFull;
			break;
		default:
			FUNC0();
			return;
		}
		FUNC1(dev, notify);
	}
}