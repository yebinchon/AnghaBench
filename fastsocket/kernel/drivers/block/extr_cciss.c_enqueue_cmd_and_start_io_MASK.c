#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ Qdepth; scalar_t__ maxQsinceinit; int /*<<< orphan*/  lock; int /*<<< orphan*/  reqQ; } ;
typedef  TYPE_1__ ctlr_info_t ;
typedef  int /*<<< orphan*/  CommandList_struct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(ctlr_info_t *h,
	CommandList_struct *c)
{
	unsigned long flags;

	FUNC1(h, c);
	FUNC2(&h->lock, flags);
	FUNC0(&h->reqQ, c);
	h->Qdepth++;
	if (h->Qdepth > h->maxQsinceinit)
		h->maxQsinceinit = h->Qdepth;
	FUNC4(h);
	FUNC3(&h->lock, flags);
}