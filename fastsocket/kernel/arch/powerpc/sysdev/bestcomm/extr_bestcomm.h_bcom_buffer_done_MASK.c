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
struct bcom_task {int /*<<< orphan*/  outdex; } ;
struct bcom_bd {int status; } ;

/* Variables and functions */
 int BCOM_BD_READY ; 
 struct bcom_bd* FUNC0 (struct bcom_task*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bcom_task*) ; 

__attribute__((used)) static inline int
FUNC2(struct bcom_task *tsk)
{
	struct bcom_bd *bd;
	if (FUNC1(tsk))
		return 0;

	bd = FUNC0(tsk, tsk->outdex);
	return !(bd->status & BCOM_BD_READY);
}