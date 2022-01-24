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
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int
FUNC3(int cmd, int count, char *str)
{
	/* xen early printk uses console io hypercall before
	 * xencomm initialization. In that case, we just ignore it.
	 */
	if (!FUNC1())
		return 0;

	return FUNC0
		(cmd, count, FUNC2(str, count));
}