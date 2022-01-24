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
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (struct device_node*,char*) ; 
 int FUNC1 (struct device_node*,int /*<<< orphan*/ *,char**,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static struct device_node *FUNC3(char *drc_name,
						  char *drc_type)
{
	struct device_node *np = NULL;
	char *name;
	char *type;
	int rc;

	while ((np = FUNC0(np, "pci"))) {
		rc = FUNC1(np, NULL, &name, &type, NULL);
		if (rc == 0)
			if (!FUNC2(drc_name, name) && !FUNC2(drc_type, type))
				break;
	}

	return np;
}