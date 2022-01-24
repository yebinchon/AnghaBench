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
 int /*<<< orphan*/  FUNC0 (struct st5481_adapter*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int INDICATION ; 
 int PH_ACTIVATE ; 
 int /*<<< orphan*/  ST_L1_F7 ; 
 int /*<<< orphan*/  FUNC3 (struct st5481_adapter*) ; 

__attribute__((used)) static void
FUNC4(struct FsmInst *fi, int event, void *arg)
{
	struct st5481_adapter *adapter = fi->userdata;

	FUNC2(&adapter->timer, 0);
	FUNC3(adapter);
	FUNC1(fi, ST_L1_F7);
	FUNC0(adapter, PH_ACTIVATE | INDICATION, NULL);
}