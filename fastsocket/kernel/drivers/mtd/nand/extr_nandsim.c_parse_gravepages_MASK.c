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
struct grave_page {unsigned int page_no; unsigned int max_reads; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  grave_pages ; 
 char* gravepages ; 
 struct grave_page* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void)
{
	char *g;
	int zero_ok;
	unsigned int page_no;
	unsigned int max_reads;
	struct grave_page *gp;

	if (!gravepages)
		return 0;
	g = gravepages;
	do {
		zero_ok = (*g == '0' ? 1 : 0);
		page_no = FUNC3(g, &g, 0);
		if (!zero_ok && !page_no) {
			FUNC0("invalid gravepagess.\n");
			return -EINVAL;
		}
		max_reads = 3;
		if (*g == ':') {
			g += 1;
			max_reads = FUNC3(g, &g, 0);
		}
		if (*g == ',')
			g += 1;
		gp = FUNC1(sizeof(*gp), GFP_KERNEL);
		if (!gp) {
			FUNC0("unable to allocate memory.\n");
			return -ENOMEM;
		}
		gp->page_no = page_no;
		gp->max_reads = max_reads;
		FUNC2(&gp->list, &grave_pages);
	} while (*g);
	return 0;
}