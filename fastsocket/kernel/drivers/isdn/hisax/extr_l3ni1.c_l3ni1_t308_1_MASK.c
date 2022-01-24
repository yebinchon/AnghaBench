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
 int /*<<< orphan*/  CC_T308_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MT_RELEASE ; 
 int /*<<< orphan*/  T308 ; 
 int /*<<< orphan*/  FUNC2 (struct l3_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l3_process*,int) ; 

__attribute__((used)) static void
FUNC4(struct l3_process *pc, u_char pr, void *arg)
{
	FUNC3(pc, 19);
	FUNC1(&pc->timer);
	FUNC2(pc, MT_RELEASE);
	FUNC0(&pc->timer, T308, CC_T308_2);
}