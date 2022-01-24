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
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m, const char *c)
{
	while (*c) {
		if (FUNC1(*c) || *c == '.')
			FUNC0(m, c);
		else if (*c == '/' || *c == '-')
			FUNC2(m, " at ");
		c++;
	}
}