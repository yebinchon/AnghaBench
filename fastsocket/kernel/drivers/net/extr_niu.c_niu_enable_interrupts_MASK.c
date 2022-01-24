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
struct niu_ldg {int dummy; } ;
struct niu {int num_ldg; struct niu_ldg* ldg; } ;

/* Variables and functions */
 int FUNC0 (struct niu*,struct niu_ldg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*,struct niu_ldg*,int) ; 

__attribute__((used)) static int FUNC2(struct niu *np, int on)
{
	int i;

	for (i = 0; i < np->num_ldg; i++) {
		struct niu_ldg *lp = &np->ldg[i];
		int err;

		err = FUNC0(np, lp, on);
		if (err)
			return err;
	}
	for (i = 0; i < np->num_ldg; i++)
		FUNC1(np, &np->ldg[i], on);

	return 0;
}