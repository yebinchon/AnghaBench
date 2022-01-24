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
typedef  int /*<<< orphan*/  u_long ;
struct BCState {int ackcnt; int /*<<< orphan*/  st; int /*<<< orphan*/  aclock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct BCState *bcs)
{
	u_long	flags;
	int	ack;

	FUNC1(&bcs->aclock, flags);
	ack = bcs->ackcnt;
	bcs->ackcnt = 0;
	FUNC2(&bcs->aclock, flags);
	if (ack)
		FUNC0(bcs->st, ack);
}