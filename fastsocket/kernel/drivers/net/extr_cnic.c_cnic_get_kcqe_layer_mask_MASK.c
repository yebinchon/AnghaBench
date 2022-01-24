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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ FCOE_RAMROD_CMD_ID_TERMINATE_CONN ; 
 int KCQE_FLAGS_LAYER_MASK ; 
 int KCQE_FLAGS_LAYER_MASK_L4 ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline u32 FUNC2(u32 opflag)
{
	if (FUNC1(FUNC0(opflag) == FCOE_RAMROD_CMD_ID_TERMINATE_CONN))
		return KCQE_FLAGS_LAYER_MASK_L4;

	return opflag & KCQE_FLAGS_LAYER_MASK;
}