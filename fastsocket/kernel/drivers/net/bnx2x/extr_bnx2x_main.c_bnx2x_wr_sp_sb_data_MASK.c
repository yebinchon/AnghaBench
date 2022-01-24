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
typedef  int /*<<< orphan*/  u32 ;
struct hc_sp_status_block_data {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 int FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bnx2x *bp,
		struct hc_sp_status_block_data *sp_sb_data)
{
	int func = FUNC0(bp);
	int i;
	for (i = 0; i < sizeof(struct hc_sp_status_block_data)/sizeof(u32); i++)
		FUNC2(bp, BAR_CSTRORM_INTMEM +
			FUNC1(func) +
			i*sizeof(u32),
			*((u32 *)sp_sb_data + i));
}