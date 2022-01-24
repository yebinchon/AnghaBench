#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_2__* device; } ;
typedef  int /*<<< orphan*/  nsp32_hw_data ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {unsigned int io_port; int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;

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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *SCpnt)
{
	nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
	unsigned int   base = SCpnt->device->host->io_port;

	FUNC4(SCpnt->device->host->host_lock);

	FUNC2(KERN_INFO, "Bus Reset");	
	FUNC0(NSP32_DEBUG_BUSRESET, "SCpnt=0x%x", SCpnt);

	FUNC3(base, IRQ_CONTROL, IRQ_CONTROL_ALL_IRQ_MASK);
	FUNC1(data);
	FUNC3(base, IRQ_CONTROL, 0);

	FUNC5(SCpnt->device->host->host_lock);
	return SUCCESS;	/* SCSI bus reset is succeeded at any time. */
}