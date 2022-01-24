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
typedef  int u8 ;
struct tx_queue {int index; } ;
struct mv643xx_eth_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXQ_COMMAND ; 
 int FUNC0 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 struct mv643xx_eth_private* FUNC1 (struct tx_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct tx_queue *txq)
{
	struct mv643xx_eth_private *mp = FUNC1(txq);
	u8 mask = 1 << txq->index;

	FUNC3(mp, TXQ_COMMAND, mask << 8);
	while (FUNC0(mp, TXQ_COMMAND) & mask)
		FUNC2(10);
}