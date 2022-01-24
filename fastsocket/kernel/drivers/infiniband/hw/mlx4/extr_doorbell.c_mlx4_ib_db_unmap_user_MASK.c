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
struct mlx4_ib_ucontext {int /*<<< orphan*/  db_page_mutex; } ;
struct TYPE_3__ {TYPE_2__* user_page; } ;
struct mlx4_db {TYPE_1__ u; } ;
struct TYPE_4__ {int /*<<< orphan*/  umem; int /*<<< orphan*/  list; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx4_ib_ucontext *context, struct mlx4_db *db)
{
	FUNC3(&context->db_page_mutex);

	if (!--db->u.user_page->refcnt) {
		FUNC2(&db->u.user_page->list);
		FUNC0(db->u.user_page->umem);
		FUNC1(db->u.user_page);
	}

	FUNC4(&context->db_page_mutex);
}