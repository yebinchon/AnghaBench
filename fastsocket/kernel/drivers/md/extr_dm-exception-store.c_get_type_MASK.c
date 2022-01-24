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
struct dm_exception_store_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dm_exception_store_type* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char) ; 

__attribute__((used)) static struct dm_exception_store_type *FUNC7(const char *type_name)
{
	char *p, *type_name_dup;
	struct dm_exception_store_type *type;

	type = FUNC2(type_name);
	if (type)
		return type;

	type_name_dup = FUNC4(type_name, GFP_KERNEL);
	if (!type_name_dup) {
		FUNC0("No memory left to attempt load for \"%s\"", type_name);
		return NULL;
	}

	while (FUNC5("dm-exstore-%s", type_name_dup) ||
	       !(type = FUNC2(type_name))) {
		p = FUNC6(type_name_dup, '-');
		if (!p)
			break;
		p[0] = '\0';
	}

	if (!type)
		FUNC1("Module for exstore type \"%s\" not found.", type_name);

	FUNC3(type_name_dup);

	return type;
}