#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int /*<<< orphan*/  bchannel; } ;
struct l3_process {int debug; int /*<<< orphan*/  timer; int /*<<< orphan*/  st; TYPE_1__ para; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_T313 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int L3_DEB_WARN ; 
 int /*<<< orphan*/  MT_CONNECT ; 
 int /*<<< orphan*/  T313 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct l3_process*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct l3_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct l3_process*,int) ; 

__attribute__((used)) static void
FUNC6(struct l3_process *pc, u_char pr,
		 void *arg)
{
        if (!pc->para.bchannel) 
	 { if (pc->debug & L3_DEB_WARN)
	       FUNC2(pc->st, "D-chan connect for waiting call");
           FUNC3(pc, pr, arg);
           return;
         }
	FUNC5(pc, 8);
	FUNC4(pc, MT_CONNECT);
	FUNC1(&pc->timer);
	FUNC0(&pc->timer, T313, CC_T313);
}