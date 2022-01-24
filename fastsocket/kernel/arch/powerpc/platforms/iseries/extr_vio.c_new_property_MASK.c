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
struct property {char* name; char* value; int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct property* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static struct property *FUNC4(const char *name, int length,
		const void *value)
{
	struct property *np = FUNC0(sizeof(*np) + FUNC3(name) + 1 + length,
			GFP_KERNEL);

	if (!np)
		return NULL;
	np->name = (char *)(np + 1);
	np->value = np->name + FUNC3(name) + 1;
	FUNC2(np->name, name);
	FUNC1(np->value, value, length);
	np->length = length;
	return np;
}