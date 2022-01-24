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
struct layer2 {int /*<<< orphan*/  tei; int /*<<< orphan*/  ui_queue; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  GROUP_TEI ; 
 int /*<<< orphan*/  ST_L2_1 ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;

	FUNC1(&l2->ui_queue);
	l2->tei = GROUP_TEI;
	FUNC0(fi, ST_L2_1);
}