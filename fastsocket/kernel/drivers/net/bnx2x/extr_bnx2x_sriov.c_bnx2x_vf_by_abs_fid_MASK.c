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
typedef  scalar_t__ u16 ;
struct bnx2x_virtf {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 struct bnx2x_virtf* FUNC1 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,scalar_t__) ; 

__attribute__((used)) static
struct bnx2x_virtf *FUNC3(struct bnx2x *bp, u16 abs_vfid)
{
	u16 idx =  (u16)FUNC2(bp, abs_vfid);
	return (idx < FUNC0(bp)) ? FUNC1(bp, idx) : NULL;
}