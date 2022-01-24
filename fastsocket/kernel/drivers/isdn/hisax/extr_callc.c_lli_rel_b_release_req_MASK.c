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
struct FsmInst {struct Channel* userdata; } ;
struct Channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct Channel*) ; 

__attribute__((used)) static void
FUNC2(struct FsmInst *fi, int event, void *arg)
{
	struct Channel *chanp = fi->userdata;

	FUNC1(chanp);
	FUNC0(fi, event, arg);
}