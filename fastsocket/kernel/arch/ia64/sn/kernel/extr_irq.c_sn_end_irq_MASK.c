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
typedef  int u64 ;
struct TYPE_2__ {scalar_t__ sn_in_service_ivecs; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  IA64_IPI_DM_INT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int SGI_UART_VECTOR ; 
 int /*<<< orphan*/  SH_EVENT_OCCURRED ; 
 int SH_EVENT_OCCURRED_UART_INT_MASK ; 
 int /*<<< orphan*/  FUNC2 (int,void volatile*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 TYPE_1__* pda ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ sn_force_interrupt_flag ; 

__attribute__((used)) static void FUNC6(unsigned int irq)
{
	int ivec;
	u64 event_occurred;

	ivec = irq & 0xff;
	if (ivec == SGI_UART_VECTOR) {
		event_occurred = FUNC0((u64*)FUNC1 (SH_EVENT_OCCURRED));
		/* If the UART bit is set here, we may have received an
		 * interrupt from the UART that the driver missed.  To
		 * make sure, we IPI ourselves to force us to look again.
		 */
		if (event_occurred & SH_EVENT_OCCURRED_UART_INT_MASK) {
			FUNC4(FUNC5(), SGI_UART_VECTOR,
					  IA64_IPI_DM_INT, 0);
		}
	}
	FUNC2(ivec, (volatile void *)pda->sn_in_service_ivecs);
	if (sn_force_interrupt_flag)
		FUNC3(irq);
}