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
struct ctlr_info {int dummy; } ;
struct CommandList {int /*<<< orphan*/ * waiting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,struct CommandList*) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct ctlr_info *h,
	struct CommandList *c)
{
	FUNC0(wait);

	c->waiting = &wait;
	FUNC1(h, c);
	FUNC2(&wait);
}