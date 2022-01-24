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
typedef  enum km_type { ____Placeholder_km_type } km_type ;

/* Variables and functions */
 struct page* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

__attribute__((used)) static void FUNC3(void *addr, enum km_type idx)
{
	struct page *page;

	if (!addr)
		return;

	page = FUNC0(addr);

	FUNC1(addr, idx);
	FUNC2(page);
}