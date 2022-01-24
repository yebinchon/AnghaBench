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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {int /*<<< orphan*/ * uus1_data; } ;
struct TYPE_4__ {TYPE_1__ ni1; } ;
struct l3_process {TYPE_2__ prot; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_ALERTING ; 
 int /*<<< orphan*/  FUNC0 (struct l3_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct l3_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l3_process*,int) ; 

__attribute__((used)) static void
FUNC3(struct l3_process *pc, u_char pr,
		 void *arg)
{
	FUNC2(pc, 7);
	if (!pc->prot.ni1.uus1_data[0]) 
		FUNC0(pc, MT_ALERTING);
	else
		FUNC1(pc, MT_ALERTING); 
}