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
struct initio_host {int jsstatus0; int jsint; int /*<<< orphan*/ * active; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSC_FLUSH_FIFO ; 
 int /*<<< orphan*/  TSC_HW_RESELECT ; 
 int /*<<< orphan*/  TSC_INITDEFAULT ; 
 int TSS_DISC_INT ; 
 int TSS_INT_PENDING ; 
 int TSS_SCSIRST_INT ; 
 scalar_t__ TUL_SConfig ; 
 scalar_t__ TUL_SCtrl0 ; 
 scalar_t__ TUL_SCtrl1 ; 
 scalar_t__ TUL_SInt ; 
 scalar_t__ TUL_SStatus0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (scalar_t__) ; 
 int FUNC2 (struct initio_host*) ; 
 int FUNC3 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct initio_host * host)
{
	while (!((host->jsstatus0 = FUNC1(host->addr + TUL_SStatus0)) & TSS_INT_PENDING))
		FUNC0();

	host->jsint = FUNC1(host->addr + TUL_SInt);

	if (host->jsint & TSS_SCSIRST_INT)	/* if SCSI bus reset detected */
		return FUNC3(host);
	if (host->jsint & TSS_DISC_INT) {	/* BUS disconnection */
		FUNC4(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0); /* Flush SCSI FIFO */
		FUNC4(TSC_INITDEFAULT, host->addr + TUL_SConfig);
		FUNC4(TSC_HW_RESELECT, host->addr + TUL_SCtrl1);	/* Enable HW reselect */
		host->active = NULL;
		return -1;
	}
	return FUNC2(host);
}