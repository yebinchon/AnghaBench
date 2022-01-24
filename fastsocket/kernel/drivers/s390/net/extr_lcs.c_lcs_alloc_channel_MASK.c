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
struct lcs_channel {TYPE_1__* iob; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  LCS_BUF_STATE_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LCS_IOBUFFERSIZE ; 
 int LCS_NUM_BUFFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  setup ; 

__attribute__((used)) static int
FUNC3(struct lcs_channel *channel)
{
	int cnt;

	FUNC0(2, setup, "ichalloc");
	for (cnt = 0; cnt < LCS_NUM_BUFFS; cnt++) {
		/* alloc memory fo iobuffer */
		channel->iob[cnt].data =
			FUNC2(LCS_IOBUFFERSIZE, GFP_DMA | GFP_KERNEL);
		if (channel->iob[cnt].data == NULL)
			break;
		channel->iob[cnt].state = LCS_BUF_STATE_EMPTY;
	}
	if (cnt < LCS_NUM_BUFFS) {
		/* Not all io buffers could be allocated. */
		FUNC0(2, setup, "echalloc");
		while (cnt-- > 0)
			FUNC1(channel->iob[cnt].data);
		return -ENOMEM;
	}
	return 0;
}