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
struct nlattr {int dummy; } ;
struct iwl_test {int /*<<< orphan*/  notify; } ;

/* Variables and functions */
 size_t IWL_TM_ATTR_ENABLE_NOTIFICATION ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 

__attribute__((used)) static int FUNC1(struct iwl_test *tst,
				  struct nlattr **tb)
{
	tst->notify = FUNC0(tb[IWL_TM_ATTR_ENABLE_NOTIFICATION]);
	return 0;
}