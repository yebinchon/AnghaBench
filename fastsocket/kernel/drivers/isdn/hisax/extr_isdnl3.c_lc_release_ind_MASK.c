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
struct TYPE_2__ {int /*<<< orphan*/  squeue; int /*<<< orphan*/  l3m_timer; } ;
struct PStack {TYPE_1__ l3; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int DL_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int INDICATION ; 
 int /*<<< orphan*/  ST_L3_LC_REL ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;

	FUNC1(&st->l3.l3m_timer, 52);
	FUNC0(fi, ST_L3_LC_REL);
	FUNC3(&st->l3.squeue);
	FUNC2(st, DL_RELEASE | INDICATION);
}