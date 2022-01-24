#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* l1l2 ) (struct PStack*,int,int /*<<< orphan*/ *) ;} ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int CONFIRM ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int PH_ACTIVATE ; 
 int /*<<< orphan*/  ST_L1_ACTIV ; 
 int /*<<< orphan*/  FUNC1 (struct PStack*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;

	FUNC0(fi, ST_L1_ACTIV);
	st->l1.l1l2(st, PH_ACTIVATE | CONFIRM, NULL);
}