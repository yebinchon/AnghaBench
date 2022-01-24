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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int SALRET_NOT_IMPLEMENTED ; 
 int SALRET_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC5(struct seq_file *s)
{
	char *p;
	size_t sz;
	int e;

	for (sz = PAGE_SIZE; sz < 16 * PAGE_SIZE; sz += PAGE_SIZE) {
		if (!(p = FUNC3(sz, GFP_KERNEL)))
			break;
		e = FUNC1(FUNC0(p), sz);
		if (e == SALRET_OK)
			FUNC4(s, p);
		FUNC2(p);
		if (e == SALRET_OK || e == SALRET_NOT_IMPLEMENTED)
			break;
	}
}