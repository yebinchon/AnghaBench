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
struct ctlr_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  Qdepth; int /*<<< orphan*/  reqQ; } ;
struct CommandList {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctlr_info*,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct ctlr_info*) ; 

__attribute__((used)) static void FUNC6(struct ctlr_info *h,
	struct CommandList *c)
{
	unsigned long flags;

	FUNC2(h, c);
	FUNC1(h, c);
	FUNC3(&h->lock, flags);
	FUNC0(&h->reqQ, c);
	h->Qdepth++;
	FUNC4(&h->lock, flags);
	FUNC5(h);
}