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
struct l3_process {int /*<<< orphan*/  st; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_T309 ; 
 int DL_ESTABLISH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int REQUEST ; 
 int /*<<< orphan*/  T309 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct l3_process *pc, u_char pr, void *arg)
{
        FUNC1(&pc->timer);
        FUNC0(&pc->timer, T309, CC_T309);
        FUNC2(pc->st, DL_ESTABLISH | REQUEST, NULL);
}