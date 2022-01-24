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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long MAX_DOMAIN_PAGES ; 
 unsigned long P2M_ENTRIES_PER_PAGE ; 

__attribute__((used)) static inline unsigned FUNC1(unsigned long pfn)
{
	FUNC0(pfn >= MAX_DOMAIN_PAGES);
	return pfn / P2M_ENTRIES_PER_PAGE;
}