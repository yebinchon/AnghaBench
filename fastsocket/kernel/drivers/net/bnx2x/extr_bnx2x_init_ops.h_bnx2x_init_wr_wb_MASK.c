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
struct bnx2x {scalar_t__ dmae_ready; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bnx2x *bp, u32 addr,
			     const u32 *data, u32 len)
{
	if (bp->dmae_ready)
		FUNC1(bp, data, addr, len, 0);

	/* in E1 chips BIOS initiated ZLR may interrupt widebus writes */
	else if (FUNC0(bp))
		FUNC2(bp, addr, data, len);

	/* in later chips PXP root complex handles BIOS ZLR w/o interrupting */
	else
		FUNC3(bp, addr, data, len);
}