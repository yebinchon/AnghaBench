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
struct thread_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUCKET_EMPTY ; 
 int FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  THREAD_INFO_ORDER ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * sun4c_bucket ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int sun4c_lowbucket_avail ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct thread_info *ti)
{
	unsigned long tiaddr = (unsigned long) ti;
	unsigned long pages = FUNC1(FUNC5(tiaddr));
	int entry = FUNC0(tiaddr);

	/* We are deleting a mapping, so the flush here is mandatory. */
	FUNC4(tiaddr);
	FUNC4(tiaddr + PAGE_SIZE);

	FUNC6(tiaddr, 0);
	FUNC6(tiaddr + PAGE_SIZE, 0);

	sun4c_bucket[entry] = BUCKET_EMPTY;
	if (entry < sun4c_lowbucket_avail)
		sun4c_lowbucket_avail = entry;

	FUNC2(pages, THREAD_INFO_ORDER);
	FUNC3(entry);
}