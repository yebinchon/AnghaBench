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
struct sh_flctl {int /*<<< orphan*/ * done_buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_flctl*) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_flctl*) ; 

__attribute__((used)) static void FUNC4(struct sh_flctl *flctl, int offset)
{
	unsigned long data;
	unsigned long *buf = (unsigned long *)&flctl->done_buff[offset];

	FUNC3(flctl);

	data = FUNC2(FUNC0(flctl));
	*buf = FUNC1(data);
}