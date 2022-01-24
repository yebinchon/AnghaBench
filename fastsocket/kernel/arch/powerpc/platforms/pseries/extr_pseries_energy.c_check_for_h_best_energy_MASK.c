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
 struct device_node* FUNC0 (char*) ; 
 char* FUNC1 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct device_node *rtas = NULL;
	const char *hypertas, *s;
	int length;
	int rc = 0;

	rtas = FUNC0("/rtas");
	if (!rtas)
		return 0;

	hypertas = FUNC1(rtas, "ibm,hypertas-functions", &length);
	if (!hypertas) {
		FUNC2(rtas);
		return 0;
	}

	/* hypertas will have list of strings with hcall names */
	for (s = hypertas; s < hypertas + length; s += FUNC3(s) + 1) {
		if (!FUNC4("hcall-best-energy-1", s, 19)) {
			rc = 1; /* Found the string */
			break;
		}
	}
	FUNC2(rtas);
	return rc;
}