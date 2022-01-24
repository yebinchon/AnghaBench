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
struct qeth_channel {TYPE_1__* iob; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int QETH_CMD_BUFFER_NO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qeth_channel *channel)
{
	int cnt;

	FUNC0(SETUP, 2, "freech");
	for (cnt = 0; cnt < QETH_CMD_BUFFER_NO; cnt++)
		FUNC1(channel->iob[cnt].data);
}