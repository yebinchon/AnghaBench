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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(pte_t *pte, struct page *pmd_page,
		      unsigned long addr, void *data)
{
	unsigned long **frames = (unsigned long **)data;

	FUNC1(&init_mm, addr, pte, FUNC0((*frames)[0], PAGE_KERNEL));
	(*frames)++;
	return 0;
}