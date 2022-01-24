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
struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ need_ptcg_sem ; 
 int /*<<< orphan*/  ptcg_sem ; 
 int toolatetochangeptcgsem ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6 (struct mm_struct *mm, unsigned long start,
		       unsigned long end, unsigned long nbits)
{
	struct mm_struct *active_mm = current->active_mm;

	toolatetochangeptcgsem = 1;

	if (mm != active_mm) {
		/* Restore region IDs for mm */
		if (mm && active_mm) {
			FUNC0(mm);
		} else {
			FUNC2();
			return;
		}
	}

	if (need_ptcg_sem)
		FUNC1(&ptcg_sem);

	do {
		/*
		 * Flush ALAT entries also.
		 */
		FUNC3(start, (nbits << 2));
		FUNC4();
		start += (1UL << nbits);
	} while (start < end);

	if (need_ptcg_sem)
		FUNC5(&ptcg_sem);

        if (mm != active_mm) {
                FUNC0(active_mm);
        }
}