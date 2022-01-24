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
struct TYPE_4__ {scalar_t__ fulldup; int persist; int /*<<< orphan*/  txdelay; int /*<<< orphan*/  slottime; scalar_t__ group; } ;
struct TYPE_3__ {scalar_t__ tx_state; } ;
struct scc_channel {int* wreg; TYPE_2__ kiss; scalar_t__ dcd; TYPE_1__ stat; int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_queue; } ;

/* Variables and functions */
 scalar_t__ KISS_DUPLEX_HALF ; 
 size_t R5 ; 
 int RTS ; 
 int Rand ; 
 scalar_t__ TXS_BUSY ; 
 scalar_t__ TXS_IDLE ; 
 scalar_t__ TXS_WAIT ; 
 int /*<<< orphan*/  TX_ON ; 
 scalar_t__ FUNC0 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scc_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct scc_channel*,void (*) (unsigned long),int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 void FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned long channel)
{
	struct scc_channel *scc = (struct scc_channel *) channel;
	
	if (scc->stat.tx_state == TXS_WAIT)	/* maxkeyup or idle timeout */
	{
		if (FUNC5(&scc->tx_queue)) {	/* nothing to send */
			scc->stat.tx_state = TXS_IDLE;
			FUNC1(scc->dev);	/* t_maxkeyup locked it. */
			return;
		}

		scc->stat.tx_state = TXS_BUSY;
	}

	if (scc->kiss.fulldup == KISS_DUPLEX_HALF)
	{
		Rand = Rand * 17 + 31;
		
		if (scc->dcd || (scc->kiss.persist) < Rand || (scc->kiss.group && FUNC0(scc)) )
		{
			FUNC3(scc);
			FUNC4(scc, t_dwait, scc->kiss.slottime);
			return ;
		}
	}

	if ( !(scc->wreg[R5] & RTS) )
	{
		FUNC2(scc, TX_ON);
		FUNC4(scc, t_txdelay, scc->kiss.txdelay);
	} else {
		FUNC4(scc, t_txdelay, 0);
	}
}