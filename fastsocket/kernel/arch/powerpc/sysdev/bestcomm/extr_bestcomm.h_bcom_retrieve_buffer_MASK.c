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
typedef  int /*<<< orphan*/  u32 ;
struct bcom_task {size_t outdex; void** cookie; } ;
struct bcom_bd {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 size_t FUNC0 (struct bcom_task*) ; 
 struct bcom_bd* FUNC1 (struct bcom_task*,size_t) ; 

__attribute__((used)) static inline void *
FUNC2(struct bcom_task *tsk, u32 *p_status, struct bcom_bd **p_bd)
{
	void *cookie = tsk->cookie[tsk->outdex];
	struct bcom_bd *bd = FUNC1(tsk, tsk->outdex);

	if (p_status)
		*p_status = bd->status;
	if (p_bd)
		*p_bd = bd;
	tsk->outdex = FUNC0(tsk);
	return cookie;
}