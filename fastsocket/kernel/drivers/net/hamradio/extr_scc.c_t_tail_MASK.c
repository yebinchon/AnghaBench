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
struct TYPE_4__ {scalar_t__ tx_state; } ;
struct TYPE_3__ {int mintime; } ;
struct scc_channel {int /*<<< orphan*/  dev; TYPE_2__ stat; TYPE_1__ kiss; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_wdog; } ;

/* Variables and functions */
 scalar_t__ TXS_IDLE ; 
 scalar_t__ TXS_TIMEOUT ; 
 scalar_t__ TXS_WAIT ; 
 int /*<<< orphan*/  TX_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scc_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scc_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  t_dwait ; 

__attribute__((used)) static void FUNC6(unsigned long channel)
{
	struct scc_channel *scc = (struct scc_channel *) channel;
	unsigned long flags;
	
	FUNC4(&scc->lock, flags); 
 	FUNC0(&scc->tx_wdog);	
 	FUNC2(scc, TX_OFF);
	FUNC5(&scc->lock, flags);

 	if (scc->stat.tx_state == TXS_TIMEOUT)		/* we had a timeout? */
 	{
 		scc->stat.tx_state = TXS_WAIT;
		FUNC3(scc, t_dwait, scc->kiss.mintime*100);
 		return;
 	}
 	
 	scc->stat.tx_state = TXS_IDLE;
	FUNC1(scc->dev);
}