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
struct niu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct niu*) ; 

__attribute__((used)) static void FUNC3(struct niu *np)
{
	/* NOTE: unconditional netif_wake_queue is only appropriate
	 * so long as all callers are assured to have free tx slots
	 * (such as after niu_init_hw).
	 */
	FUNC0(np->dev);

	FUNC2(np);

	FUNC1(np, 1);
}