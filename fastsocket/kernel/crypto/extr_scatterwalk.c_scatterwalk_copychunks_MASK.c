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
typedef  int /*<<< orphan*/  u8 ;
struct scatter_walk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scatter_walk*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (struct scatter_walk*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatter_walk*,int,int) ; 
 unsigned int FUNC4 (struct scatter_walk*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(void *buf, struct scatter_walk *walk,
			    size_t nbytes, int out)
{
	for (;;) {
		unsigned int len_this_page = FUNC4(walk);
		u8 *vaddr;

		if (len_this_page > nbytes)
			len_this_page = nbytes;

		vaddr = FUNC2(walk, out);
		FUNC0(buf, vaddr, len_this_page, out);
		FUNC5(vaddr, out);

		FUNC1(walk, len_this_page);

		if (nbytes == len_this_page)
			break;

		buf += len_this_page;
		nbytes -= len_this_page;

		FUNC3(walk, out, 1);
	}
}