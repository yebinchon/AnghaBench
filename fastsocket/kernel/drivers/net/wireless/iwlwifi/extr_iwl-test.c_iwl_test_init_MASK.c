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
struct iwl_trans {int dummy; } ;
struct iwl_test_ops {int dummy; } ;
struct iwl_test {struct iwl_test_ops* ops; struct iwl_trans* trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_test*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_test*) ; 

void FUNC2(struct iwl_test *tst, struct iwl_trans *trans,
		   struct iwl_test_ops *ops)
{
	tst->trans = trans;
	tst->ops = ops;

	FUNC1(tst);
	FUNC0(tst);
}