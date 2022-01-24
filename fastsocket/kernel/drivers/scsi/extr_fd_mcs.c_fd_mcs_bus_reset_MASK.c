#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {struct Scsi_Host* host; } ;
typedef  TYPE_2__ Scsi_Cmnd ;

/* Variables and functions */
 int PARITY_MASK ; 
 int /*<<< orphan*/  SCSI_Cntl_port ; 
 int /*<<< orphan*/  SCSI_Mode_Cntl_port ; 
 int SUCCESS ; 
 int /*<<< orphan*/  TMC_Cntl_port ; 
 int /*<<< orphan*/  current_SC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC6(Scsi_Cmnd * SCpnt) {
	struct Scsi_Host *shpnt = SCpnt->device->host;
	unsigned long flags;

#if DEBUG_RESET
	static int called_once = 0;
#endif

#if ERRORS_ONLY
	if (SCpnt)
		printk("fd_mcs: SCSI Bus Reset\n");
#endif

#if DEBUG_RESET
	if (called_once)
		fd_mcs_print_info(current_SC);
	called_once = 1;
#endif

	FUNC4(shpnt->host_lock, flags);

	FUNC2(1, SCSI_Cntl_port);
	FUNC0(2);
	FUNC2(0, SCSI_Cntl_port);
	FUNC0(115);
	FUNC2(0, SCSI_Mode_Cntl_port);
	FUNC2(PARITY_MASK, TMC_Cntl_port);

	FUNC5(shpnt->host_lock, flags);

	/* Unless this is the very first call (i.e., SCPnt == NULL), everything
	   is probably hosed at this point.  We will, however, try to keep
	   things going by informing the high-level code that we need help. */
		return SUCCESS;
}