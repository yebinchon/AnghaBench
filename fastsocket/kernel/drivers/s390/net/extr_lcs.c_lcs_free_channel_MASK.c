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
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int LCS_NUM_BUFFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setup ; 

__attribute__((used)) static void
FUNC2(struct lcs_channel *channel)
{
	int cnt;

	FUNC0(2, setup, "ichfree");
	for (cnt = 0; cnt < LCS_NUM_BUFFS; cnt++) {
		FUNC1(channel->iob[cnt].data);
		channel->iob[cnt].data = NULL;
	}
}