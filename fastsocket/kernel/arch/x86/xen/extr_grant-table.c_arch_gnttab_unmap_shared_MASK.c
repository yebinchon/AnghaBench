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
struct grant_entry {int dummy; } ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  unmap_pte_fn ; 

void FUNC1(struct grant_entry *shared,
			      unsigned long nr_gframes)
{
	FUNC0(&init_mm, (unsigned long)shared,
			    PAGE_SIZE * nr_gframes, unmap_pte_fn, NULL);
}