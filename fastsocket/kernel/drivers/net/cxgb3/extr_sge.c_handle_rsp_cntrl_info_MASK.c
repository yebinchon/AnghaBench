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
typedef  int u32 ;
struct sge_qset {TYPE_1__* txq; } ;
struct TYPE_2__ {unsigned int processed; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int F_RSPD_TXQ0_GTS ; 
 int F_RSPD_TXQ1_GTS ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 size_t TXQ_CTRL ; 
 size_t TXQ_ETH ; 
 size_t TXQ_OFLD ; 
 int /*<<< orphan*/  TXQ_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct sge_qset *qs, u32 flags)
{
	unsigned int credits;

#if USE_GTS
	if (flags & F_RSPD_TXQ0_GTS)
		clear_bit(TXQ_RUNNING, &qs->txq[TXQ_ETH].flags);
#endif

	credits = FUNC0(flags);
	if (credits)
		qs->txq[TXQ_ETH].processed += credits;

	credits = FUNC2(flags);
	if (credits)
		qs->txq[TXQ_CTRL].processed += credits;

# if USE_GTS
	if (flags & F_RSPD_TXQ1_GTS)
		clear_bit(TXQ_RUNNING, &qs->txq[TXQ_OFLD].flags);
# endif
	credits = FUNC1(flags);
	if (credits)
		qs->txq[TXQ_OFLD].processed += credits;
}