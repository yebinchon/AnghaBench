#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int /*<<< orphan*/  Flags; } ;
struct TYPE_6__ {int IOCCapabilities; } ;
struct TYPE_7__ {int EEDPTagMode; } ;
struct MPT3SAS_ADAPTER {TYPE_3__ iounit_pg1; TYPE_1__ facts; int /*<<< orphan*/  iounit_pg0; int /*<<< orphan*/  ioc_pg8; int /*<<< orphan*/  bios_pg3; int /*<<< orphan*/  bios_pg2; TYPE_2__ manu_pg11; int /*<<< orphan*/  name; int /*<<< orphan*/  manu_pg10; scalar_t__ ir_firmware; int /*<<< orphan*/  manu_pg0; } ;
typedef  int /*<<< orphan*/  Mpi2ConfigReply_t ;

/* Variables and functions */
 int MPI2_IOCFACTS_CAPABILITY_TASK_SET_FULL_HANDLING ; 
 int /*<<< orphan*/  MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct MPT3SAS_ADAPTER *ioc)
{
	Mpi2ConfigReply_t mpi_reply;
	u32 iounit_pg1_flags;

	FUNC8(ioc, &mpi_reply, &ioc->manu_pg0);
	if (ioc->ir_firmware)
		FUNC9(ioc, &mpi_reply,
		    &ioc->manu_pg10);

	/*
	 * Ensure correct T10 PI operation if vendor left EEDPTagMode
	 * flag unset in NVDATA.
	 */
	FUNC10(ioc, &mpi_reply, &ioc->manu_pg11);
	if (ioc->manu_pg11.EEDPTagMode == 0) {
		FUNC13("%s: overriding NVDATA EEDPTagMode setting\n",
		    ioc->name);
		ioc->manu_pg11.EEDPTagMode &= ~0x3;
		ioc->manu_pg11.EEDPTagMode |= 0x1;
		FUNC12(ioc, &mpi_reply,
		    &ioc->manu_pg11);
	}

	FUNC3(ioc, &mpi_reply, &ioc->bios_pg2);
	FUNC4(ioc, &mpi_reply, &ioc->bios_pg3);
	FUNC5(ioc, &mpi_reply, &ioc->ioc_pg8);
	FUNC6(ioc, &mpi_reply, &ioc->iounit_pg0);
	FUNC7(ioc, &mpi_reply, &ioc->iounit_pg1);
	FUNC0(ioc);

	/*
	 * Enable task_set_full handling in iounit_pg1 when the
	 * facts capabilities indicate that its supported.
	 */
	iounit_pg1_flags = FUNC2(ioc->iounit_pg1.Flags);
	if ((ioc->facts.IOCCapabilities &
	    MPI2_IOCFACTS_CAPABILITY_TASK_SET_FULL_HANDLING))
		iounit_pg1_flags &=
		    ~MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING;
	else
		iounit_pg1_flags |=
		    MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING;
	ioc->iounit_pg1.Flags = FUNC1(iounit_pg1_flags);
	FUNC11(ioc, &mpi_reply, &ioc->iounit_pg1);
}