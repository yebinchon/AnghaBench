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
struct layer2 {int /*<<< orphan*/  t200; int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_T200_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

inline void
FUNC2(struct layer2 *l2, int i)
{
	if (FUNC1(FLG_T200_RUN, &l2->flag))
		FUNC0(&l2->t200, i);
}