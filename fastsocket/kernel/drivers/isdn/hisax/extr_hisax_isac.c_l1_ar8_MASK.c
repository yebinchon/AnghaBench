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
struct isac {int /*<<< orphan*/  timer; } ;
struct FsmInst {struct isac* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_TIMER3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ISAC_CMD_AR8 ; 
 int /*<<< orphan*/  TIMER3_VALUE ; 
 int /*<<< orphan*/  FUNC1 (struct isac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct FsmInst *fi, int event, void *arg)
{
	struct isac *isac = fi->userdata;

	FUNC0(&isac->timer, TIMER3_VALUE, EV_TIMER3, NULL, 2);
	FUNC1(isac, ISAC_CMD_AR8);
}