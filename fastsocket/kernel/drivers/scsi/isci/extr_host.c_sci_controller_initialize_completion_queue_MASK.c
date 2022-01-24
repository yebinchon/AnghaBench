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
typedef  size_t u32 ;
struct isci_host {int* completion_queue; TYPE_1__* smu_registers; scalar_t__ completion_queue_get; } ;
struct TYPE_2__ {int /*<<< orphan*/  completion_queue_put; int /*<<< orphan*/  completion_queue_get; int /*<<< orphan*/  completion_queue_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  EVENT_ENABLE ; 
 int /*<<< orphan*/  EVENT_POINTER ; 
 int /*<<< orphan*/  POINTER ; 
 size_t SCU_MAX_COMPLETION_QUEUE_ENTRIES ; 
 scalar_t__ SCU_MAX_EVENTS ; 
 size_t FUNC0 (scalar_t__) ; 
 size_t FUNC1 (size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct isci_host *ihost)
{
	u32 index;
	u32 completion_queue_control_value;
	u32 completion_queue_get_value;
	u32 completion_queue_put_value;

	ihost->completion_queue_get = 0;

	completion_queue_control_value =
		(FUNC1(SCU_MAX_COMPLETION_QUEUE_ENTRIES - 1) |
		 FUNC0(SCU_MAX_EVENTS - 1));

	FUNC5(completion_queue_control_value,
	       &ihost->smu_registers->completion_queue_control);


	/* Set the completion queue get pointer and enable the queue */
	completion_queue_get_value = (
		(FUNC3(POINTER, 0))
		| (FUNC3(EVENT_POINTER, 0))
		| (FUNC2(ENABLE))
		| (FUNC2(EVENT_ENABLE))
		);

	FUNC5(completion_queue_get_value,
	       &ihost->smu_registers->completion_queue_get);

	/* Set the completion queue put pointer */
	completion_queue_put_value = (
		(FUNC4(POINTER, 0))
		| (FUNC4(EVENT_POINTER, 0))
		);

	FUNC5(completion_queue_put_value,
	       &ihost->smu_registers->completion_queue_put);

	/* Initialize the cycle bit of the completion queue entries */
	for (index = 0; index < SCU_MAX_COMPLETION_QUEUE_ENTRIES; index++) {
		/*
		 * If get.cycle_bit != completion_queue.cycle_bit
		 * its not a valid completion queue entry
		 * so at system start all entries are invalid */
		ihost->completion_queue[index] = 0x80000000;
	}
}