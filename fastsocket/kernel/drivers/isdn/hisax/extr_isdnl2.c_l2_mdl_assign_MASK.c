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
struct TYPE_2__ {int /*<<< orphan*/  (* l2tei ) (struct PStack*,int,int /*<<< orphan*/ *) ;} ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int INDICATION ; 
 int MDL_ASSIGN ; 
 int /*<<< orphan*/  ST_L2_3 ; 
 int /*<<< orphan*/  FUNC1 (struct PStack*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;

	FUNC0(fi, ST_L2_3); 
	st->l2.l2tei(st, MDL_ASSIGN | INDICATION, NULL);
}