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
typedef  union task_union {int dummy; } task_union ;
struct thread_info {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 union task_union* BUCKET_EMPTY ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NR_TASK_BUCKETS ; 
 unsigned long PAGE_SIZE ; 
 unsigned long THREAD_INFO_ORDER ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ invalid_segment ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 union task_union** sun4c_bucket ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 int sun4c_lowbucket_avail ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct thread_info *FUNC9(void)
{
	unsigned long addr, pages;
	int entry;

	pages = FUNC2(GFP_KERNEL, THREAD_INFO_ORDER);
	if (!pages)
		return NULL;

	for (entry = sun4c_lowbucket_avail; entry < NR_TASK_BUCKETS; entry++)
		if (sun4c_bucket[entry] == BUCKET_EMPTY)
			break;
	if (entry == NR_TASK_BUCKETS) {
		FUNC3(pages, THREAD_INFO_ORDER);
		return NULL;
	}
	if (entry >= sun4c_lowbucket_avail)
		sun4c_lowbucket_avail = entry + 1;

	addr = FUNC0(entry);
	sun4c_bucket[entry] = (union task_union *) addr;
	if(FUNC7(addr) == invalid_segment)
		FUNC4(addr);

	/* We are changing the virtual color of the page(s)
	 * so we must flush the cache to guarantee consistency.
	 */
	FUNC6(pages);
	FUNC6(pages + PAGE_SIZE);

	FUNC8(addr, FUNC1(pages));
	FUNC8(addr + PAGE_SIZE, FUNC1(pages + PAGE_SIZE));

#ifdef CONFIG_DEBUG_STACK_USAGE
	memset((void *)addr, 0, PAGE_SIZE << THREAD_INFO_ORDER);
#endif /* DEBUG_STACK_USAGE */

	return (struct thread_info *) addr;
}