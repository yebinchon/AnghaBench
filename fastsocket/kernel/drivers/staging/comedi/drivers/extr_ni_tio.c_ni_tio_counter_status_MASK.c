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
struct ni_gpct {int /*<<< orphan*/  counter_index; } ;

/* Variables and functions */
 unsigned int COMEDI_COUNTER_ARMED ; 
 unsigned int COMEDI_COUNTER_COUNTING ; 
 unsigned int const FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int const FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct ni_gpct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC4(struct ni_gpct *counter)
{
	unsigned int status = 0;
	const unsigned bits = FUNC3(counter,
					    FUNC2(counter->
								 counter_index));
	if (bits & FUNC0(counter->counter_index)) {
		status |= COMEDI_COUNTER_ARMED;
		if (bits & FUNC1(counter->counter_index))
			status |= COMEDI_COUNTER_COUNTING;
	}
	return status;
}