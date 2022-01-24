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
typedef  int u32 ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_Q_TXD ; 
 int ATH9K_TIME_QUANTUM ; 
 int ATH9K_TX_STOP_DMA_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

bool FUNC3(struct ath_hw *ah, u32 q)
{
#define ATH9K_TX_STOP_DMA_TIMEOUT	1000    /* usec */
#define ATH9K_TIME_QUANTUM		100     /* usec */
	int wait_time = ATH9K_TX_STOP_DMA_TIMEOUT / ATH9K_TIME_QUANTUM;
	int wait;

	FUNC0(ah, AR_Q_TXD, 1 << q);

	for (wait = wait_time; wait != 0; wait--) {
		if (wait != wait_time)
			FUNC2(ATH9K_TIME_QUANTUM);

		if (FUNC1(ah, q) == 0)
			break;
	}

	FUNC0(ah, AR_Q_TXD, 0);

	return wait != 0;

#undef ATH9K_TX_STOP_DMA_TIMEOUT
#undef ATH9K_TIME_QUANTUM
}