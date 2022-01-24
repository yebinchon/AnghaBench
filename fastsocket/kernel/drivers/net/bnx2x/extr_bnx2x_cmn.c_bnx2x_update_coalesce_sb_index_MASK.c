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
typedef  int u16 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BNX2X_BTR ; 
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int,int,int,int) ; 

void FUNC3(struct bnx2x *bp, u8 fw_sb_id,
				    u8 sb_index, u8 disable, u16 usec)
{
	int port = FUNC0(bp);
	u8 ticks = usec / BNX2X_BTR;

	FUNC2(bp, port, fw_sb_id, sb_index, ticks);

	disable = disable ? 1 : (usec ? 0 : 1);
	FUNC1(bp, port, fw_sb_id, sb_index, disable);
}