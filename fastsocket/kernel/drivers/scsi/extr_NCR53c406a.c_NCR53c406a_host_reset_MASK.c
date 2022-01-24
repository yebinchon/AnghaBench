#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* device; } ;
struct TYPE_6__ {TYPE_1__* host; } ;
struct TYPE_5__ {int /*<<< orphan*/  host_lock; } ;
typedef  TYPE_3__ Scsi_Cmnd ;

/* Variables and functions */
 int /*<<< orphan*/  C4_IMG ; 
 int /*<<< orphan*/  CHIP_RESET ; 
 int /*<<< orphan*/  CMD_REG ; 
 int /*<<< orphan*/  CONFIG4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCSI_NOP ; 
 int /*<<< orphan*/  SCSI_RESET ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(Scsi_Cmnd * SCpnt)
{
	FUNC0(FUNC3("NCR53c406a_reset called\n"));

	FUNC5(SCpnt->device->host->host_lock);

	FUNC2(C4_IMG, CONFIG4);	/* Select reg set 0 */
	FUNC2(CHIP_RESET, CMD_REG);
	FUNC2(SCSI_NOP, CMD_REG);	/* required after reset */
	FUNC2(SCSI_RESET, CMD_REG);
	FUNC1();

	FUNC4(2);

	FUNC6(SCpnt->device->host->host_lock);

	return SUCCESS;
}