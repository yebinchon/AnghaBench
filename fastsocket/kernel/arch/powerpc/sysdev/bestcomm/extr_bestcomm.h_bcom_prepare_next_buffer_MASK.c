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
struct bcom_task {int /*<<< orphan*/  index; } ;
struct bcom_bd {scalar_t__ status; } ;

/* Variables and functions */
 struct bcom_bd* FUNC0 (struct bcom_task*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct bcom_bd *
FUNC1(struct bcom_task *tsk)
{
	struct bcom_bd *bd;

	bd = FUNC0(tsk, tsk->index);
	bd->status = 0;	/* cleanup last status */
	return bd;
}