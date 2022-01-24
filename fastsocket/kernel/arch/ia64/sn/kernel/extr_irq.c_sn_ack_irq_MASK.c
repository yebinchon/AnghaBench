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
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int SH_ALL_INT_MASK ; 
 int /*<<< orphan*/  SH_EVENT_OCCURRED ; 
 int /*<<< orphan*/  SH_EVENT_OCCURRED_ALIAS ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,void volatile*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 TYPE_1__* pda ; 

__attribute__((used)) static void FUNC5(unsigned int irq)
{
	u64 event_occurred, mask;

	irq = irq & 0xff;
	event_occurred = FUNC0((u64*)FUNC2(SH_EVENT_OCCURRED));
	mask = event_occurred & SH_ALL_INT_MASK;
	FUNC1((u64*)FUNC2(SH_EVENT_OCCURRED_ALIAS), mask);
	FUNC3(irq, (volatile void *)pda->sn_in_service_ivecs);

	FUNC4(irq);
}