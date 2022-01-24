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
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {int /*<<< orphan*/  pgd; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_1__ init_mm ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned long FUNC2(unsigned long token)
{
	pte_t *ptep;
	unsigned long pa;

	ptep = FUNC0(init_mm.pgd, token);
	if (!ptep)
		return token;
	pa = FUNC1(*ptep) << PAGE_SHIFT;

	return pa | (token & (PAGE_SIZE-1));
}