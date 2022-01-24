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
struct t4_sq {int dummy; } ;
struct c4iw_rdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c4iw_rdev*,struct t4_sq*) ; 
 int /*<<< orphan*/  FUNC1 (struct c4iw_rdev*,struct t4_sq*) ; 
 scalar_t__ FUNC2 (struct t4_sq*) ; 

__attribute__((used)) static void FUNC3(struct c4iw_rdev *rdev, struct t4_sq *sq)
{
	if (FUNC2(sq))
		FUNC1(rdev, sq);
	else
		FUNC0(rdev, sq);
}