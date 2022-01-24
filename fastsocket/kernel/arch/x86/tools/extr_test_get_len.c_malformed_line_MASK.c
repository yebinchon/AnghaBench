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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,char const*) ; 
 char* prog ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(const char *line, int line_nr)
{
	FUNC1(stderr, "%s: malformed line %d:\n%s", prog, line_nr, line);
	FUNC0(3);
}