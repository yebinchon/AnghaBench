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
struct slabinfo {char* name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static void FUNC5(struct slabinfo *s, const char *name, int n)
{
	char x[100];
	FILE *f;

	FUNC4(x, 100, "%s/%s", s->name, name);
	f = FUNC2(x, "w");
	if (!f)
		FUNC0("Cannot write to %s\n", x);

	FUNC3(f, "%d\n", n);
	FUNC1(f);
}