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
typedef  scalar_t__ pgoff_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  mm ;
struct TYPE_2__ {scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(pgd_t *pgd, struct mm_struct *mm)
{
	FUNC0(sizeof(FUNC1(pgd)->index) < sizeof(mm));
	FUNC1(pgd)->index = (pgoff_t)mm;
}