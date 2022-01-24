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
struct st5481_adapter {int /*<<< orphan*/  timer; } ;
struct FsmInst {struct st5481_adapter* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_TIMER3 ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ST5481_CMD_AR8 ; 
 int /*<<< orphan*/  ST5481_CMD_DR ; 
 int /*<<< orphan*/  ST5481_CMD_PUP ; 
 int /*<<< orphan*/  ST_L1_F4 ; 
 int /*<<< orphan*/  TIMER3_VALUE ; 
 int /*<<< orphan*/  FUNC2 (struct st5481_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct FsmInst *fi, int event, void *arg)
{
	struct st5481_adapter *adapter = fi->userdata;

	FUNC2(adapter, ST5481_CMD_DR);
	FUNC2(adapter, ST5481_CMD_PUP);
	FUNC1(&adapter->timer, TIMER3_VALUE, EV_TIMER3, NULL, 2);
	FUNC2(adapter, ST5481_CMD_AR8);
	FUNC0(fi, ST_L1_F4);
}