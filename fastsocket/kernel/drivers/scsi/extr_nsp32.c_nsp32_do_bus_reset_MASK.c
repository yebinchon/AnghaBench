#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ sync_flag; } ;
typedef  TYPE_1__ nsp32_target ;
struct TYPE_8__ {unsigned int BaseAddress; int /*<<< orphan*/ * CurrentSC; TYPE_1__* target; } ;
typedef  TYPE_2__ nsp32_hw_data ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  BM_CNT ; 
 int /*<<< orphan*/  BUSCTL_RST ; 
 int /*<<< orphan*/  CLRCOUNTER_ALLMASK ; 
 int /*<<< orphan*/  CLR_COUNTER ; 
 int /*<<< orphan*/  IRQ_STATUS ; 
 int /*<<< orphan*/  NSP32_DEBUG_BUSRESET ; 
 int /*<<< orphan*/  RESET_HOLD_TIME ; 
 int /*<<< orphan*/  SCSI_BUS_CONTROL ; 
 int /*<<< orphan*/  TRANSFER_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned short FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(nsp32_hw_data *data)
{
	unsigned int   base = data->BaseAddress;
	unsigned short intrdat;
	int i;

	FUNC1(NSP32_DEBUG_BUSRESET, "in");

	/*
	 * stop all transfer
	 * clear TRANSFERCONTROL_BM_START
	 * clear counter
	 */
	FUNC5(base, TRANSFER_CONTROL, 0);
	FUNC6(base, BM_CNT,           0);
	FUNC6(base, CLR_COUNTER,      CLRCOUNTER_ALLMASK);

	/*
	 * fall back to asynchronous transfer mode
	 * initialize SDTR negotiation flag
	 */
	for (i = 0; i < FUNC0(data->target); i++) {
		nsp32_target *target = &data->target[i];

		target->sync_flag = 0;
		FUNC3(data, target);
	}

	/*
	 * reset SCSI bus
	 */
	FUNC4(base, SCSI_BUS_CONTROL, BUSCTL_RST);
	FUNC7(RESET_HOLD_TIME);
	FUNC4(base, SCSI_BUS_CONTROL, 0);
	for(i = 0; i < 5; i++) {
		intrdat = FUNC2(base, IRQ_STATUS); /* dummy read */
		FUNC1(NSP32_DEBUG_BUSRESET, "irq:1: 0x%x", intrdat);
        }

	data->CurrentSC = NULL;
}