#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int idx; TYPE_1__* tst; } ;
struct TYPE_3__ {int /*<<< orphan*/  get; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ repeat_test ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__ ts ; 

__attribute__((used)) static void FUNC2(char *arg)
{
	int go_back = FUNC1(arg, NULL, 10);

	repeat_test--;
	if (repeat_test <= 0)
		ts.idx++;
	else
		ts.idx -= go_back;
	FUNC0(ts.tst[ts.idx].get);
}