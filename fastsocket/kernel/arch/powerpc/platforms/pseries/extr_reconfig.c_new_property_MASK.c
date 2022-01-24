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
struct property {int length; struct property* value; struct property* name; struct property* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct property*) ; 
 void* FUNC1 (int const,int /*<<< orphan*/ ) ; 
 struct property* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct property*,unsigned char const*,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct property*,char const*) ; 
 int const FUNC5 (char const*) ; 

__attribute__((used)) static struct property *FUNC6(const char *name, const int length,
				     const unsigned char *value, struct property *last)
{
	struct property *new = FUNC2(sizeof(*new), GFP_KERNEL);

	if (!new)
		return NULL;

	if (!(new->name = FUNC1(FUNC5(name) + 1, GFP_KERNEL)))
		goto cleanup;
	if (!(new->value = FUNC1(length + 1, GFP_KERNEL)))
		goto cleanup;

	FUNC4(new->name, name);
	FUNC3(new->value, value, length);
	*(((char *)new->value) + length) = 0;
	new->length = length;
	new->next = last;
	return new;

cleanup:
	FUNC0(new->name);
	FUNC0(new->value);
	FUNC0(new);
	return NULL;
}