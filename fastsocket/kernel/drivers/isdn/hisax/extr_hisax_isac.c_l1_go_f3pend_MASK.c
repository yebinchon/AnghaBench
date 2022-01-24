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
struct isac {int dummy; } ;
struct FsmInst {struct isac* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISAC_CMD_DI ; 
 int /*<<< orphan*/  ST_L1_F3_PEND_DEACT ; 
 int /*<<< orphan*/  FUNC1 (struct isac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct FsmInst *fi, int event, void *arg)
{
	struct isac *isac = fi->userdata;

	FUNC0(fi, ST_L1_F3_PEND_DEACT);
	FUNC1(isac, ISAC_CMD_DI);
}