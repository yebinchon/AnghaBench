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
struct target_control {int flags; } ;
struct initio_host {scalar_t__ phase; scalar_t__ addr; struct target_control* active_tc; } ;

/* Variables and functions */
#define  MSG_COMP 135 
#define  MSG_DISC 134 
#define  MSG_EXTEND 133 
#define  MSG_IGNOREWIDE 132 
 scalar_t__ MSG_IN ; 
#define  MSG_NOP 131 
#define  MSG_REJ 130 
#define  MSG_RESTORE 129 
#define  MSG_SDP 128 
 int TCF_NO_SYNC_NEGO ; 
 int TCF_SYNC_DONE ; 
 int TSC_FLUSH_FIFO ; 
 int TSC_MSG_ACCEPT ; 
 int TSC_SET_ACK ; 
 int TSC_SET_ATN ; 
 int TSC_XF_FIFO_IN ; 
 scalar_t__ TUL_SCmd ; 
 scalar_t__ TUL_SCnt0 ; 
 scalar_t__ TUL_SCtrl0 ; 
 scalar_t__ TUL_SFifo ; 
 scalar_t__ TUL_SSignal ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct initio_host*) ; 
 int FUNC4 (struct initio_host*) ; 
 int FUNC5 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int FUNC8 (struct initio_host*) ; 

__attribute__((used)) static int FUNC9(struct initio_host * host)
{
	struct target_control *active_tc;

	for (;;) {
		FUNC6(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);

		FUNC7(1, host->addr + TUL_SCnt0);
		FUNC6(TSC_XF_FIFO_IN, host->addr + TUL_SCmd);
		if (FUNC8(host) == -1)
			return -1;

		switch (FUNC0(host->addr + TUL_SFifo)) {
		case MSG_DISC:	/* Disconnect msg */
			FUNC6(TSC_MSG_ACCEPT, host->addr + TUL_SCmd);
			return FUNC4(host);
		case MSG_SDP:
		case MSG_RESTORE:
		case MSG_NOP:
			FUNC1(host);
			break;
		case MSG_REJ:	/* Clear ATN first              */
			FUNC6((FUNC0(host->addr + TUL_SSignal) & (TSC_SET_ACK | 7)),
				host->addr + TUL_SSignal);
			active_tc = host->active_tc;
			if ((active_tc->flags & (TCF_SYNC_DONE | TCF_NO_SYNC_NEGO)) == 0)	/* do sync nego */
				FUNC6(((FUNC0(host->addr + TUL_SSignal) & (TSC_SET_ACK | 7)) | TSC_SET_ATN),
					host->addr + TUL_SSignal);
			FUNC1(host);
			break;
		case MSG_EXTEND:	/* extended msg */
			FUNC2(host);
			break;
		case MSG_IGNOREWIDE:
			FUNC1(host);
			break;
		case MSG_COMP:
			FUNC6(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);
			FUNC6(TSC_MSG_ACCEPT, host->addr + TUL_SCmd);
			return FUNC5(host);
		default:
			FUNC3(host);
			break;
		}
		if (host->phase != MSG_IN)
			return host->phase;
	}
	/* statement won't reach here */
}