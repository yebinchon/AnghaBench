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
struct initio_host {scalar_t__ phase; scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ MSG_OUT ; 
 int MSG_REJ ; 
 int TSC_SET_ACK ; 
 int TSC_SET_ATN ; 
 int TSC_XF_FIFO_OUT ; 
 scalar_t__ TUL_SCmd ; 
 scalar_t__ TUL_SFifo ; 
 scalar_t__ TUL_SSignal ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int FUNC3 (struct initio_host*) ; 

__attribute__((used)) static int FUNC4(struct initio_host * host)
{
	FUNC2(((FUNC0(host->addr + TUL_SSignal) & (TSC_SET_ACK | 7)) | TSC_SET_ATN), host->addr + TUL_SSignal);

	if (FUNC1(host) == -1)
		return -1;

	if (host->phase == MSG_OUT) {
		FUNC2(MSG_REJ, host->addr + TUL_SFifo);		/* Msg reject           */
		FUNC2(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
		return FUNC3(host);
	}
	return host->phase;
}