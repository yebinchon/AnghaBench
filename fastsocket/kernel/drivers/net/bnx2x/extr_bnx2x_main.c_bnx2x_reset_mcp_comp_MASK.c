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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bnx2x*) ; 

__attribute__((used)) static int FUNC3(struct bnx2x *bp, u32 magic_val)
{
	int rc = FUNC2(bp);

	/* Restore the `magic' bit value */
	if (!FUNC0(bp))
		FUNC1(bp, magic_val);

	return rc;
}