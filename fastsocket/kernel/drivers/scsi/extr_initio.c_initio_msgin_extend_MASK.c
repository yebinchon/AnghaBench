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
typedef  scalar_t__ u8 ;
struct initio_host {int phase; int* msg; scalar_t__ addr; TYPE_1__* active_tc; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int MSG_EXTEND ; 
 scalar_t__ MSG_IN ; 
 scalar_t__ MSG_OUT ; 
 int TCF_NO_SYNC_NEGO ; 
 int TCF_NO_WDTR ; 
 int TCF_SYNC_DONE ; 
 int TSC_FLUSH_FIFO ; 
 int TSC_SET_ACK ; 
 scalar_t__ TSC_SET_ATN ; 
 int TSC_XF_FIFO_IN ; 
 int TSC_XF_FIFO_OUT ; 
 scalar_t__ TUL_SCmd ; 
 scalar_t__ TUL_SCnt0 ; 
 scalar_t__ TUL_SCtrl0 ; 
 scalar_t__ TUL_SFifo ; 
 scalar_t__ TUL_SSignal ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct initio_host*) ; 
 scalar_t__ FUNC2 (struct initio_host*) ; 
 int FUNC3 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int FUNC7 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct initio_host*) ; 

__attribute__((used)) static int FUNC9(struct initio_host * host)
{
	u8 len, idx;

	if (FUNC1(host) != MSG_IN)
		return host->phase;

	/* Get extended msg length      */
	FUNC6(1, host->addr + TUL_SCnt0);
	FUNC5(TSC_XF_FIFO_IN, host->addr + TUL_SCmd);
	if (FUNC7(host) == -1)
		return -1;

	len = FUNC0(host->addr + TUL_SFifo);
	host->msg[0] = len;
	for (idx = 1; len != 0; len--) {

		if ((FUNC1(host)) != MSG_IN)
			return host->phase;
		FUNC6(1, host->addr + TUL_SCnt0);
		FUNC5(TSC_XF_FIFO_IN, host->addr + TUL_SCmd);
		if (FUNC7(host) == -1)
			return -1;
		host->msg[idx++] = FUNC0(host->addr + TUL_SFifo);
	}
	if (host->msg[1] == 1) {		/* if it's synchronous data transfer request */
		u8 r;
		if (host->msg[0] != 3)	/* if length is not right */
			return FUNC3(host);
		if (host->active_tc->flags & TCF_NO_SYNC_NEGO) {	/* Set OFFSET=0 to do async, nego back */
			host->msg[3] = 0;
		} else {
			if (FUNC2(host) == 0 &&
			    (host->active_tc->flags & TCF_SYNC_DONE)) {
				FUNC4(host);
				return FUNC1(host);
			}
		}

		r = FUNC0(host->addr + TUL_SSignal);
		FUNC5((r & (TSC_SET_ACK | 7)) | TSC_SET_ATN,
			host->addr + TUL_SSignal);
		if (FUNC1(host) != MSG_OUT)
			return host->phase;
		/* sync msg out */
		FUNC5(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);

		FUNC4(host);

		FUNC5(MSG_EXTEND, host->addr + TUL_SFifo);
		FUNC5(3, host->addr + TUL_SFifo);
		FUNC5(1, host->addr + TUL_SFifo);
		FUNC5(host->msg[2], host->addr + TUL_SFifo);
		FUNC5(host->msg[3], host->addr + TUL_SFifo);
		FUNC5(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
		return FUNC7(host);
	}
	if (host->msg[0] != 2 || host->msg[1] != 3)
		return FUNC3(host);
	/* if it's WIDE DATA XFER REQ   */
	if (host->active_tc->flags & TCF_NO_WDTR) {
		host->msg[2] = 0;
	} else {
		if (host->msg[2] > 2)	/* > 32 bits            */
			return FUNC3(host);
		if (host->msg[2] == 2) {		/* == 32                */
			host->msg[2] = 1;
		} else {
			if ((host->active_tc->flags & TCF_NO_WDTR) == 0) {
				FUNC8(host);
				if ((host->active_tc->flags & (TCF_SYNC_DONE | TCF_NO_SYNC_NEGO)) == 0)
					FUNC5(((FUNC0(host->addr + TUL_SSignal) & (TSC_SET_ACK | 7)) | TSC_SET_ATN), host->addr + TUL_SSignal);
				return FUNC1(host);
			}
		}
	}
	FUNC5(((FUNC0(host->addr + TUL_SSignal) & (TSC_SET_ACK | 7)) | TSC_SET_ATN), host->addr + TUL_SSignal);

	if (FUNC1(host) != MSG_OUT)
		return host->phase;
	/* WDTR msg out                 */
	FUNC5(MSG_EXTEND, host->addr + TUL_SFifo);
	FUNC5(2, host->addr + TUL_SFifo);
	FUNC5(3, host->addr + TUL_SFifo);
	FUNC5(host->msg[2], host->addr + TUL_SFifo);
	FUNC5(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
	return FUNC7(host);
}