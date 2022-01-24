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
struct ni_gpct_device {int* regs; } ;
struct ni_gpct {int /*<<< orphan*/  counter_index; struct ni_gpct_device* counter_dev; } ;

/* Variables and functions */
 int Gi_Synchronize_Gate_Bit ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct ni_gpct_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ni_gpct*) ; 
 scalar_t__ FUNC12 (struct ni_gpct_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ni_gpct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ni_gpct*,int,size_t) ; 

void FUNC15(struct ni_gpct *counter)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;

	FUNC11(counter);
	/* initialize counter registers */
	counter_dev->regs[FUNC0(counter->counter_index)] =
	    0x0;
	FUNC14(counter,
		       counter_dev->
		       regs[FUNC0(counter->counter_index)],
		       FUNC0(counter->counter_index));
	FUNC13(counter, FUNC1(counter->counter_index),
			~0, Gi_Synchronize_Gate_Bit);
	FUNC13(counter, FUNC8(counter->counter_index), ~0,
			0);
	counter_dev->regs[FUNC6(counter->counter_index)] = 0x0;
	FUNC14(counter,
		       counter_dev->
		       regs[FUNC6(counter->counter_index)],
		       FUNC6(counter->counter_index));
	counter_dev->regs[FUNC7(counter->counter_index)] = 0x0;
	FUNC14(counter,
		       counter_dev->
		       regs[FUNC7(counter->counter_index)],
		       FUNC7(counter->counter_index));
	FUNC13(counter,
			FUNC4(counter->counter_index), ~0,
			0);
	if (FUNC10(counter_dev)) {
		FUNC13(counter,
				FUNC2(counter->
							   counter_index), ~0,
				0);
	}
	if (FUNC12(counter_dev)) {
		counter_dev->
		    regs[FUNC9(counter->counter_index)] =
		    0x0;
		FUNC14(counter,
			       counter_dev->
			       regs[FUNC9
				    (counter->counter_index)],
			       FUNC9(counter->
							counter_index));
	}
	FUNC13(counter,
			FUNC3(counter->counter_index), ~0,
			0x0);
	FUNC13(counter,
			FUNC5(counter->counter_index),
			~0, 0x0);
}