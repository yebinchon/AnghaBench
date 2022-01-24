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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct MessageUnit_C {int /*<<< orphan*/  outbound_doorbell_clear; int /*<<< orphan*/  outbound_doorbell; } ;
struct AdapterControlBlock {scalar_t__ pmuC; } ;

/* Variables and functions */
 int ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE ; 
 int /*<<< orphan*/  ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint8_t FUNC3(struct AdapterControlBlock *pACB)
{
	struct MessageUnit_C *phbcmu = (struct MessageUnit_C *)pACB->pmuC;
	unsigned char Retries = 0x00;
	uint32_t Index;
	do {
		for (Index = 0; Index < 100; Index++) {
			if (FUNC1(&phbcmu->outbound_doorbell) & ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE) {
				FUNC2(ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR, &phbcmu->outbound_doorbell_clear);/*clear interrupt*/
				return true;
			}
			/* one us delay	*/
			FUNC0(10);
		} /*max 1 seconds*/
	} while (Retries++ < 20); /*max 20 sec*/
	return false;
}