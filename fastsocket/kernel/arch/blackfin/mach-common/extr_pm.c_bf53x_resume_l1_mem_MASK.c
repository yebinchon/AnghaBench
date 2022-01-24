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

/* Variables and functions */
 int L1_CODE_LENGTH ; 
 scalar_t__ L1_CODE_START ; 
 int L1_DATA_A_LENGTH ; 
 scalar_t__ L1_DATA_A_START ; 
 int L1_DATA_B_LENGTH ; 
 scalar_t__ L1_DATA_B_START ; 
 int /*<<< orphan*/  L1_SCRATCH_LENGTH ; 
 scalar_t__ L1_SCRATCH_START ; 
 int /*<<< orphan*/  FUNC0 (void*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned char*,int /*<<< orphan*/ ) ; 

int FUNC2(unsigned char *memptr)
{
	FUNC0((void *) L1_CODE_START, memptr, L1_CODE_LENGTH);
	FUNC0((void *) L1_DATA_A_START, memptr + L1_CODE_LENGTH,
			L1_DATA_A_LENGTH);
	FUNC0((void *) L1_DATA_B_START, memptr + L1_CODE_LENGTH +
			L1_DATA_A_LENGTH, L1_DATA_B_LENGTH);
	FUNC1((void *) L1_SCRATCH_START, memptr + L1_CODE_LENGTH +
			L1_DATA_A_LENGTH + L1_DATA_B_LENGTH, L1_SCRATCH_LENGTH);

	return 0;
}