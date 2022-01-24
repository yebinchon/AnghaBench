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
struct st5481_adapter {int dummy; } ;
struct FsmInst {scalar_t__ state; struct st5481_adapter* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st5481_adapter*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int INDICATION ; 
 int PH_DEACTIVATE ; 
 int /*<<< orphan*/  ST_L1_F3 ; 
 scalar_t__ ST_L1_F7 ; 
 int /*<<< orphan*/  FUNC2 (struct st5481_adapter*) ; 

__attribute__((used)) static void
FUNC3(struct FsmInst *fi, int event, void *arg)
{
	struct st5481_adapter *adapter = fi->userdata;

	if (fi->state == ST_L1_F7)
		FUNC2(adapter);
	
	FUNC1(fi, ST_L1_F3);
	FUNC0(adapter, PH_DEACTIVATE | INDICATION, NULL);
}