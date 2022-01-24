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
struct console {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSC_PUTCHAR ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (struct console *cons, const char *buf, unsigned count)
{
	unsigned long ch;

	while (count-- > 0) {
		ch = *buf++;
		FUNC0(ch, 0, 0, 0, SSC_PUTCHAR);
		if (ch == '\n')
		  FUNC0('\r', 0, 0, 0, SSC_PUTCHAR);
	}
}