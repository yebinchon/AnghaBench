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
typedef  int u8 ;
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int RATE_MCS_ANT_NUM ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 

u8 FUNC2(struct iwl_mvm *mvm, u8 valid, u8 last_idx)
{
	u8 ind = last_idx;
	int i;

	for (i = 0; i < RATE_MCS_ANT_NUM; i++) {
		ind = (ind + 1) % RATE_MCS_ANT_NUM;
		if (valid & FUNC0(ind))
			return ind;
	}

	FUNC1(1, "Failed to toggle between antennas 0x%x", valid);
	return last_idx;
}