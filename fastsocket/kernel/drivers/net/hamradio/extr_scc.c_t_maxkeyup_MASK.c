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
struct TYPE_4__ {int /*<<< orphan*/  tailtime; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_state; int /*<<< orphan*/  txerrs; } ;
struct scc_channel {TYPE_2__ kiss; TYPE_1__ stat; int /*<<< orphan*/  lock; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  tx_t; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  RES_Tx_P ; 
 int /*<<< orphan*/  TXS_TIMEOUT ; 
 int /*<<< orphan*/  TxINT_ENAB ; 
 int /*<<< orphan*/  TxUIE ; 
 int /*<<< orphan*/  FUNC1 (struct scc_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct scc_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  t_tail ; 

__attribute__((used)) static void FUNC8(unsigned long channel)
{
	struct scc_channel *scc = (struct scc_channel *) channel;
	unsigned long flags;

	FUNC6(&scc->lock, flags);
	/* 
	 * let things settle down before we start to
	 * accept new data.
	 */

	FUNC3(scc->dev);
	FUNC4(scc);

	FUNC2(&scc->tx_t);

	FUNC1(scc, R1, TxINT_ENAB);	/* force an ABORT, but don't */
	FUNC1(scc, R15, TxUIE);		/* count it. */
	FUNC0(scc->ctrl, R0, RES_Tx_P);

	FUNC7(&scc->lock, flags);

	scc->stat.txerrs++;
	scc->stat.tx_state = TXS_TIMEOUT;
	FUNC5(scc, t_tail, scc->kiss.tailtime);
}