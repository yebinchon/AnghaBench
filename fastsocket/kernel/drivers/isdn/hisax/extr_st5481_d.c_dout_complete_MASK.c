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
struct FsmInst {struct st5481_adapter* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st5481_adapter*,long) ; 

__attribute__((used)) static void FUNC1(struct FsmInst *fsm, int event, void *arg)
{
	struct st5481_adapter *adapter = fsm->userdata;
	long buf_nr = (long) arg;

	FUNC0(adapter, buf_nr);
}