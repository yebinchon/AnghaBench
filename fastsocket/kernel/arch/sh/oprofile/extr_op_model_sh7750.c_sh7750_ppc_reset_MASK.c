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
struct TYPE_2__ {unsigned int num_counters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PMCR_PMCLR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ op_model_sh7750_ops ; 

__attribute__((used)) static inline void FUNC3(void)
{
	unsigned int counters = op_model_sh7750_ops.num_counters;
	int i;

	/* Clear the counters */
	for (i = 0; i < counters; i++)
		FUNC2(FUNC1(FUNC0(i)) | PMCR_PMCLR, FUNC0(i));
}