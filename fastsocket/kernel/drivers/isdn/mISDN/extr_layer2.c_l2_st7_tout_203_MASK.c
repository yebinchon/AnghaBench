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
struct layer2 {scalar_t__ rc; int /*<<< orphan*/  T203; int /*<<< orphan*/  t203; int /*<<< orphan*/  flag; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_L2_T203 ; 
 int /*<<< orphan*/  FLG_DCHAN_BUSY ; 
 int /*<<< orphan*/  FLG_LAPD ; 
 int /*<<< orphan*/  ST_L2_8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct layer2*) ; 

__attribute__((used)) static void
FUNC4(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;

	if (FUNC2(FLG_LAPD, &l2->flag) &&
		FUNC2(FLG_DCHAN_BUSY, &l2->flag)) {
		FUNC0(&l2->t203, l2->T203, EV_L2_T203, NULL, 9);
		return;
	}
	FUNC1(fi, ST_L2_8);
	FUNC3(l2);
	l2->rc = 0;
}