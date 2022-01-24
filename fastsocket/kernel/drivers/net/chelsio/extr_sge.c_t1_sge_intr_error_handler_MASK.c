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
struct TYPE_2__ {int /*<<< orphan*/  pkt_mismatch; int /*<<< orphan*/  pkt_too_big; int /*<<< orphan*/  freelistQ_empty; int /*<<< orphan*/  respQ_overflow; int /*<<< orphan*/  respQ_empty; } ;
struct sge {TYPE_1__ stats; struct adapter* adapter; } ;
struct adapter {int flags; scalar_t__ regs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ A_SG_INT_CAUSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int F_FL_EXHAUSTED ; 
 int F_PACKET_MISMATCH ; 
 int F_PACKET_TOO_BIG ; 
 int F_RESPQ_EXHAUSTED ; 
 int F_RESPQ_OVERFLOW ; 
 int SGE_INT_FATAL ; 
 int TSO_CAPABLE ; 
 int /*<<< orphan*/  FUNC1 (struct sge*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

int FUNC5(struct sge *sge)
{
	struct adapter *adapter = sge->adapter;
	u32 cause = FUNC2(adapter->regs + A_SG_INT_CAUSE);

	if (adapter->flags & TSO_CAPABLE)
		cause &= ~F_PACKET_TOO_BIG;
	if (cause & F_RESPQ_EXHAUSTED)
		sge->stats.respQ_empty++;
	if (cause & F_RESPQ_OVERFLOW) {
		sge->stats.respQ_overflow++;
		FUNC0("%s: SGE response queue overflow\n",
			 adapter->name);
	}
	if (cause & F_FL_EXHAUSTED) {
		sge->stats.freelistQ_empty++;
		FUNC1(sge);
	}
	if (cause & F_PACKET_TOO_BIG) {
		sge->stats.pkt_too_big++;
		FUNC0("%s: SGE max packet size exceeded\n",
			 adapter->name);
	}
	if (cause & F_PACKET_MISMATCH) {
		sge->stats.pkt_mismatch++;
		FUNC0("%s: SGE packet mismatch\n", adapter->name);
	}
	if (cause & SGE_INT_FATAL)
		FUNC3(adapter);

	FUNC4(cause, adapter->regs + A_SG_INT_CAUSE);
	return 0;
}