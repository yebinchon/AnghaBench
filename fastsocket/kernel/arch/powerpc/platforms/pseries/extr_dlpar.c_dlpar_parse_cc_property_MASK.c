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
struct property {int length; void* value; int /*<<< orphan*/  name; } ;
struct cc_workarea {int name_offset; int prop_length; int prop_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct property*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int) ; 

__attribute__((used)) static struct property *FUNC4(struct cc_workarea *ccwa)
{
	struct property *prop;
	char *name;
	char *value;

	prop = FUNC2(sizeof(*prop), GFP_KERNEL);
	if (!prop)
		return NULL;

	name = (char *)ccwa + ccwa->name_offset;
	prop->name = FUNC1(name, GFP_KERNEL);
	if (!prop->name) {
		FUNC0(prop);
		return NULL;
	}

	prop->length = ccwa->prop_length;
	value = (char *)ccwa + ccwa->prop_offset;
	prop->value = FUNC2(prop->length, GFP_KERNEL);
	if (!prop->value) {
		FUNC0(prop);
		return NULL;
	}

	FUNC3(prop->value, value, prop->length);
	return prop;
}