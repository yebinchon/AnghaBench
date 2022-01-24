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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  Error; } ;
struct rio_info {int RIONumBootPkts; int RIOBootCount; TYPE_1__ RIOError; scalar_t__ RIOBootPackets; scalar_t__ RIOBooting; } ;
struct DownLoad {int Count; int /*<<< orphan*/  DataP; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_IN_PROGRESS ; 
 int /*<<< orphan*/  COPYIN_FAILED ; 
 int EBUSY ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HOST_FILE_TOO_LARGE ; 
 int /*<<< orphan*/  RIO_DEBUG_BOOT ; 
 int RTA_BOOT_DATA_SIZE ; 
 int SIXTY_FOUR_K ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC5(struct rio_info *p, struct DownLoad * rbp)
{
	int offset;

	FUNC1();

	FUNC4(RIO_DEBUG_BOOT, "Data at user address %p\n", rbp->DataP);

	/*
	 ** Check that we have set asside enough memory for this
	 */
	if (rbp->Count > SIXTY_FOUR_K) {
		FUNC4(RIO_DEBUG_BOOT, "RTA Boot Code Too Large!\n");
		p->RIOError.Error = HOST_FILE_TOO_LARGE;
		FUNC2();
		return -ENOMEM;
	}

	if (p->RIOBooting) {
		FUNC4(RIO_DEBUG_BOOT, "RTA Boot Code : BUSY BUSY BUSY!\n");
		p->RIOError.Error = BOOT_IN_PROGRESS;
		FUNC2();
		return -EBUSY;
	}

	/*
	 ** The data we load in must end on a (RTA_BOOT_DATA_SIZE) byte boundary,
	 ** so calculate how far we have to move the data up the buffer
	 ** to achieve this.
	 */
	offset = (RTA_BOOT_DATA_SIZE - (rbp->Count % RTA_BOOT_DATA_SIZE)) % RTA_BOOT_DATA_SIZE;

	/*
	 ** Be clean, and clear the 'unused' portion of the boot buffer,
	 ** because it will (eventually) be part of the Rta run time environment
	 ** and so should be zeroed.
	 */
	FUNC3(p->RIOBootPackets, 0, offset);

	/*
	 ** Copy the data from user space into the array
	 */

	if (FUNC0(((u8 *)p->RIOBootPackets) + offset, rbp->DataP, rbp->Count)) {
		FUNC4(RIO_DEBUG_BOOT, "Bad data copy from user space\n");
		p->RIOError.Error = COPYIN_FAILED;
		FUNC2();
		return -EFAULT;
	}

	/*
	 ** Make sure that our copy of the size includes that offset we discussed
	 ** earlier.
	 */
	p->RIONumBootPkts = (rbp->Count + offset) / RTA_BOOT_DATA_SIZE;
	p->RIOBootCount = rbp->Count;

	FUNC2();
	return 0;
}