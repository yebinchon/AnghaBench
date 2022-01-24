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
typedef  int /*<<< orphan*/  u_int ;
struct layer2 {char tei; int /*<<< orphan*/  ui_queue; int /*<<< orphan*/  flag; int /*<<< orphan*/  sapi; int /*<<< orphan*/  ch; } ;
struct FsmInst {scalar_t__ state; struct layer2* userdata; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  DL_INFORMATION_IND ; 
 int /*<<< orphan*/  DL_INFO_L2_CONNECT ; 
 int /*<<< orphan*/  FLG_L3_INIT ; 
 scalar_t__ ST_L2_3 ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct layer2*) ; 

__attribute__((used)) static void
FUNC7(struct FsmInst *fi, int event, void *arg)
{
	struct layer2	*l2 = fi->userdata;
	u_int		info;

	l2->tei = (signed char)(long)arg;
	FUNC3(&l2->ch, l2->sapi, l2->tei);
	info = DL_INFO_L2_CONNECT;
	FUNC1(l2, DL_INFORMATION_IND, sizeof(info), &info);
	if (fi->state == ST_L2_3) {
		FUNC0(fi);
		FUNC5(FLG_L3_INIT, &l2->flag);
	} else
		FUNC2(fi, ST_L2_4);
	if (FUNC4(&l2->ui_queue))
		FUNC6(l2);
}