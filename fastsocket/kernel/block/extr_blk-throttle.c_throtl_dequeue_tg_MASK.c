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
struct throtl_grp {int dummy; } ;
struct throtl_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct throtl_data*,struct throtl_grp*) ; 
 scalar_t__ FUNC1 (struct throtl_grp*) ; 

__attribute__((used)) static void FUNC2(struct throtl_data *td, struct throtl_grp *tg)
{
	if (FUNC1(tg))
		FUNC0(td, tg);
}