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
 int /*<<< orphan*/  FUNC0 (unsigned char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,void const*,int /*<<< orphan*/ ) ; 

int FUNC2(unsigned char *memptr)
{
	FUNC0(memptr, (const void *) L1_CODE_START, L1_CODE_LENGTH);
	FUNC0(memptr + L1_CODE_LENGTH, (const void *) L1_DATA_A_START,
			L1_DATA_A_LENGTH);
	FUNC0(memptr + L1_CODE_LENGTH + L1_DATA_A_LENGTH,
			(const void *) L1_DATA_B_START, L1_DATA_B_LENGTH);
	FUNC1(memptr + L1_CODE_LENGTH + L1_DATA_A_LENGTH +
			L1_DATA_B_LENGTH, (const void *) L1_SCRATCH_START,
			L1_SCRATCH_LENGTH);

	return 0;
}