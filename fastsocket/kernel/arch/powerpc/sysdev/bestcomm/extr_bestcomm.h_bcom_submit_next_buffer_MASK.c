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
struct bcom_task {size_t index; int flags; void** cookie; } ;
struct bcom_bd {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCOM_BD_READY ; 
 int BCOM_FLAGS_ENABLE_TASK ; 
 size_t FUNC0 (struct bcom_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcom_task*) ; 
 struct bcom_bd* FUNC2 (struct bcom_task*,size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline void
FUNC4(struct bcom_task *tsk, void *cookie)
{
	struct bcom_bd *bd = FUNC2(tsk, tsk->index);

	tsk->cookie[tsk->index] = cookie;
	FUNC3();	/* ensure the bd is really up-to-date */
	bd->status |= BCOM_BD_READY;
	tsk->index = FUNC0(tsk);
	if (tsk->flags & BCOM_FLAGS_ENABLE_TASK)
		FUNC1(tsk);
}