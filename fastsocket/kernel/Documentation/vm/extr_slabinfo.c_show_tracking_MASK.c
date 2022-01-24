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

/* Variables and functions */
 char* buffer ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct slabinfo*,char*) ; 

__attribute__((used)) static void FUNC2(struct slabinfo *s)
{
	FUNC0("\n%s: Kernel object allocation\n", s->name);
	FUNC0("-----------------------------------------------------------------------\n");
	if (FUNC1(s, "alloc_calls"))
		FUNC0(buffer);
	else
		FUNC0("No Data\n");

	FUNC0("\n%s: Kernel object freeing\n", s->name);
	FUNC0("------------------------------------------------------------------------\n");
	if (FUNC1(s, "free_calls"))
		FUNC0(buffer);
	else
		FUNC0("No Data\n");

}