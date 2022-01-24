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
struct binder_proc {int dummy; } ;
typedef  int off_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  binder_debug_no_lock ; 
 int /*<<< orphan*/  binder_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char*,struct binder_proc*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 

__attribute__((used)) static int FUNC4(char *page, char **start, off_t off,
				 int count, int *eof, void *data)
{
	struct binder_proc *proc = data;
	int len = 0;
	char *p = page;
	int do_lock = !binder_debug_no_lock;

	if (off)
		return 0;

	if (do_lock)
		FUNC0(&binder_lock);
	p += FUNC3(p, PAGE_SIZE, "binder proc state:\n");
	p = FUNC2(p, page + PAGE_SIZE, proc, 1);
	if (do_lock)
		FUNC1(&binder_lock);

	if (p > page + PAGE_SIZE)
		p = page + PAGE_SIZE;
	*start = page + off;

	len = p - page;
	if (len > off)
		len -= off;
	else
		len = 0;

	return len < count ? len  : count;
}