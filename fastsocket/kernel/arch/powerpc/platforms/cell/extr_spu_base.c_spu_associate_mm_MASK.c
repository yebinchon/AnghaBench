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
struct spu {struct mm_struct* mm; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  spu_full_list_lock ; 

void FUNC3(struct spu *spu, struct mm_struct *mm)
{
	unsigned long flags;

	FUNC1(&spu_full_list_lock, flags);
	spu->mm = mm;
	FUNC2(&spu_full_list_lock, flags);
	if (mm)
		FUNC0(mm);
}