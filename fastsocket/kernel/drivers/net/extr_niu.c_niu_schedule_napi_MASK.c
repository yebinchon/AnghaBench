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
typedef  void* u64 ;
struct niu_ldg {int /*<<< orphan*/  napi; int /*<<< orphan*/  ldg_num; void* v2; void* v1; void* v0; } ;
struct niu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct niu *np, struct niu_ldg *lp,
			      u64 v0, u64 v1, u64 v2)
{
	if (FUNC2(FUNC3(&lp->napi))) {
		lp->v0 = v0;
		lp->v1 = v1;
		lp->v2 = v2;
		FUNC1(np, lp->ldg_num, v0);
		FUNC0(&lp->napi);
	}
}