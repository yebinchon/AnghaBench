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
struct TYPE_2__ {int id; int /*<<< orphan*/  id_link; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  TYPE_1__ mm_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxn_bitmap ; 
 int /*<<< orphan*/  cxn_owners_lock ; 
 int cxn_pinned ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mm_struct *mm)
{
	mm_context_t *ctx = &mm->context;

	FUNC4(&cxn_owners_lock);

	if (!FUNC3(&ctx->id_link)) {
		if (ctx->id == cxn_pinned)
			cxn_pinned = -1;

		FUNC2(&ctx->id_link);
		FUNC1(ctx->id, cxn_bitmap);
		FUNC0(ctx->id);
		ctx->id = 0;
	}

	FUNC5(&cxn_owners_lock);
}