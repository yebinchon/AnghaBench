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
struct weak_page {unsigned int page_no; unsigned int max_writes; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct weak_page* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  weak_pages ; 
 char* weakpages ; 

__attribute__((used)) static int FUNC4(void)
{
	char *w;
	int zero_ok;
	unsigned int page_no;
	unsigned int max_writes;
	struct weak_page *wp;

	if (!weakpages)
		return 0;
	w = weakpages;
	do {
		zero_ok = (*w == '0' ? 1 : 0);
		page_no = FUNC3(w, &w, 0);
		if (!zero_ok && !page_no) {
			FUNC0("invalid weakpagess.\n");
			return -EINVAL;
		}
		max_writes = 3;
		if (*w == ':') {
			w += 1;
			max_writes = FUNC3(w, &w, 0);
		}
		if (*w == ',')
			w += 1;
		wp = FUNC1(sizeof(*wp), GFP_KERNEL);
		if (!wp) {
			FUNC0("unable to allocate memory.\n");
			return -ENOMEM;
		}
		wp->page_no = page_no;
		wp->max_writes = max_writes;
		FUNC2(&wp->list, &weak_pages);
	} while (*w);
	return 0;
}