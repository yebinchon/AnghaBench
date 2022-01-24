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
struct tx_queue {int /*<<< orphan*/  index; } ;
struct mv643xx_eth_private {TYPE_1__* shared; } ;
struct TYPE_2__ {int t_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mv643xx_eth_private* FUNC2 (struct tx_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct tx_queue *txq, int rate, int burst)
{
	struct mv643xx_eth_private *mp = FUNC2(txq);
	int token_rate;
	int bucket_size;

	token_rate = ((rate / 1000) * 64) / (mp->shared->t_clk / 1000);
	if (token_rate > 1023)
		token_rate = 1023;

	bucket_size = (burst + 255) >> 8;
	if (bucket_size > 65535)
		bucket_size = 65535;

	FUNC3(mp, FUNC1(txq->index), token_rate << 14);
	FUNC3(mp, FUNC0(txq->index), (bucket_size << 10) | token_rate);
}