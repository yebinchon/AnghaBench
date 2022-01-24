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
 int MSG_ABORT ; 
 scalar_t__ MSG_OUT ; 
 int TSC_SET_ACK ; 
 int TSC_SET_ATN ; 
 int TSC_XF_FIFO_OUT ; 
 scalar_t__ TUL_SCmd ; 
 scalar_t__ TUL_SFifo ; 
 scalar_t__ TUL_SSignal ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct initio_host*) ; 
 int FUNC2 (struct initio_host*) ; 
 int FUNC3 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct initio_host * host)
{

	FUNC4(((FUNC0(host->addr + TUL_SSignal) & (TSC_SET_ACK | 7)) | TSC_SET_ATN), host->addr + TUL_SSignal);
	if (FUNC2(host) == -1)
		return -1;
	if (host->phase != MSG_OUT)
		return FUNC1(host);

	FUNC4(MSG_ABORT, host->addr + TUL_SFifo);
	FUNC4(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);

	return FUNC3(host);
}