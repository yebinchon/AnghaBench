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
 int /*<<< orphan*/  FUNC0 (struct isac*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int INDICATION ; 
 int /*<<< orphan*/  ISAC_CMD_AR8 ; 
 int PH_ACTIVATE ; 
 int /*<<< orphan*/  ST_L1_F7 ; 
 int /*<<< orphan*/  FUNC3 (struct isac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct FsmInst *fi, int event, void *arg)
{
	struct isac *isac = fi->userdata;

	FUNC2(&isac->timer, 0);
	FUNC1(fi, ST_L1_F7);
	FUNC3(isac, ISAC_CMD_AR8);
	FUNC0(isac, PH_ACTIVATE | INDICATION, NULL);
}