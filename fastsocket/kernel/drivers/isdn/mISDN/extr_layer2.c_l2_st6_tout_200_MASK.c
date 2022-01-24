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
struct layer2 {scalar_t__ rc; scalar_t__ N200; int /*<<< orphan*/  T200; int /*<<< orphan*/  t200; scalar_t__ tm; int /*<<< orphan*/  flag; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int DISC ; 
 int /*<<< orphan*/  DL_RELEASE_CNF ; 
 int /*<<< orphan*/  EV_L2_T200 ; 
 int /*<<< orphan*/  FLG_DCHAN_BUSY ; 
 int /*<<< orphan*/  FLG_LAPD ; 
 int /*<<< orphan*/  FLG_T200_RUN ; 
 int /*<<< orphan*/  MDL_ERROR_IND ; 
 int /*<<< orphan*/  MDL_STATUS_DOWN_IND ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 int /*<<< orphan*/  FUNC0 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct layer2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct layer2*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;

	if (FUNC7(FLG_LAPD, &l2->flag) &&
		FUNC7(FLG_DCHAN_BUSY, &l2->flag)) {
		FUNC3(&l2->t200, l2->T200, EV_L2_T200, NULL, 9);
	} else if (l2->rc == l2->N200) {
		FUNC4(fi, ST_L2_4);
		FUNC6(FLG_T200_RUN, &l2->flag);
		FUNC1(l2, MDL_ERROR_IND, (void *) 'H');
		FUNC2(l2, DL_RELEASE_CNF);
		if (l2->tm)
			FUNC0(l2, MDL_STATUS_DOWN_IND, 0);
	} else {
		l2->rc++;
		FUNC3(&l2->t200, l2->T200, EV_L2_T200,
			    NULL, 9);
		FUNC5(l2, NULL, DISC | 0x10, CMD);
	}
}