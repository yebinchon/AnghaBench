#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct r3964_info {scalar_t__ state; int /*<<< orphan*/  lock; scalar_t__ bcc; int /*<<< orphan*/  tmr; int /*<<< orphan*/  flags; scalar_t__ nRetry; int /*<<< orphan*/ * tx_first; } ;

/* Variables and functions */
 int /*<<< orphan*/  R3964_ERROR ; 
 scalar_t__ R3964_IDLE ; 
 scalar_t__ R3964_TO_QVZ ; 
 scalar_t__ R3964_TX_REQUEST ; 
 int /*<<< orphan*/  STX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct r3964_info*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct r3964_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct r3964_info *pInfo)
{
	unsigned long flags;

	FUNC4(&pInfo->lock, flags);

	if ((pInfo->state == R3964_IDLE) && (pInfo->tx_first != NULL)) {
		pInfo->state = R3964_TX_REQUEST;
		pInfo->nRetry = 0;
		pInfo->flags &= ~R3964_ERROR;
		FUNC2(&pInfo->tmr, jiffies + R3964_TO_QVZ);

		FUNC5(&pInfo->lock, flags);

		FUNC0("trigger_transmit - sent STX");

		FUNC3(pInfo, STX);
		FUNC1(pInfo);

		pInfo->bcc = 0;
	} else {
		FUNC5(&pInfo->lock, flags);
	}
}