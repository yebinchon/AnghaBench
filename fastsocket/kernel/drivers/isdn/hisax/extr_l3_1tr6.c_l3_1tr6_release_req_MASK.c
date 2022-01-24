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
typedef  int /*<<< orphan*/  u_char ;
struct l3_process {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_T308_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_N1_REL ; 
 int /*<<< orphan*/  PROTO_DIS_N1 ; 
 int /*<<< orphan*/  FUNC1 (struct l3_process*) ; 
 int /*<<< orphan*/  T308 ; 
 int /*<<< orphan*/  FUNC2 (struct l3_process*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l3_process*,int) ; 

__attribute__((used)) static void
FUNC4(struct l3_process *pc, u_char pr, void *arg)
{
	FUNC1(pc);
	FUNC3(pc, 19);
	FUNC2(pc, MT_N1_REL, PROTO_DIS_N1);
	FUNC0(&pc->timer, T308, CC_T308_1);
}