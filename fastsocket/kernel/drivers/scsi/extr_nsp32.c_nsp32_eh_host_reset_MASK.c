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
struct scsi_cmnd {TYPE_1__* device; } ;
struct Scsi_Host {unsigned int io_port; int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  nsp32_hw_data ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_CONTROL ; 
 int /*<<< orphan*/  IRQ_CONTROL_ALL_IRQ_MASK ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  NSP32_DEBUG_BUSRESET ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *SCpnt)
{
	struct Scsi_Host *host = SCpnt->device->host;
	unsigned int      base = SCpnt->device->host->io_port;
	nsp32_hw_data    *data = (nsp32_hw_data *)host->hostdata;

	FUNC2(KERN_INFO, "Host Reset");	
	FUNC0(NSP32_DEBUG_BUSRESET, "SCpnt=0x%x", SCpnt);

	FUNC5(SCpnt->device->host->host_lock);

	FUNC4(data);
	FUNC3(base, IRQ_CONTROL, IRQ_CONTROL_ALL_IRQ_MASK);
	FUNC1(data);
	FUNC3(base, IRQ_CONTROL, 0);

	FUNC6(SCpnt->device->host->host_lock);
	return SUCCESS;	/* Host reset is succeeded at any time. */
}