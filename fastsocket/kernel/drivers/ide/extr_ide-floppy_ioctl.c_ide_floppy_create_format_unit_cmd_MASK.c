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
struct ide_atapi_pc {int* c; int req_xfer; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int GPCMD_FORMAT_UNIT ; 
 int /*<<< orphan*/  PC_FLAG_WRITING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ide_atapi_pc*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC4(struct ide_atapi_pc *pc,
					      u8 *buf, int b, int l,
					      int flags)
{
	FUNC1(pc);
	pc->c[0] = GPCMD_FORMAT_UNIT;
	pc->c[1] = 0x17;

	FUNC2(buf, 0, 12);
	buf[1] = 0xA2;
	/* Default format list header, u8 1: FOV/DCRT/IMM bits set */

	if (flags & 1)				/* Verify bit on... */
		buf[1] ^= 0x20;			/* ... turn off DCRT bit */
	buf[3] = 8;

	FUNC3(FUNC0(b), (unsigned int *)(&buf[4]));
	FUNC3(FUNC0(l), (unsigned int *)(&buf[8]));
	pc->req_xfer = 12;
	pc->flags |= PC_FLAG_WRITING;
}