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
struct property {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct property* FUNC0 (char*,int,unsigned char*,struct property*) ; 
 struct device_node* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (char*,struct property*) ; 
 char* FUNC4 (char*,char*,char**,int*,unsigned char**) ; 
 int /*<<< orphan*/  FUNC5 (struct property*) ; 
 char* FUNC6 (char*,char) ; 

__attribute__((used)) static int FUNC7(char *buf, size_t bufsize)
{
	char *path, *end, *name;
	struct device_node *np;
	struct property *prop = NULL;
	unsigned char* value;
	int length, rv = 0;

	end = buf + bufsize;
	path = buf;
	buf = FUNC6(buf, ' ');
	if (!buf)
		return -EINVAL;
	*buf = '\0';
	buf++;

	if ((np = FUNC1(path))) {
		FUNC2(np);
		return -EINVAL;
	}

	/* rv = build_prop_list(tmp, bufsize - (tmp - buf), &proplist); */
	while (buf < end &&
	       (buf = FUNC4(buf, end, &name, &length, &value))) {
		struct property *last = prop;

		prop = FUNC0(name, length, value, last);
		if (!prop) {
			rv = -ENOMEM;
			prop = last;
			goto out;
		}
	}
	if (!buf) {
		rv = -EINVAL;
		goto out;
	}

	rv = FUNC3(path, prop);

out:
	if (rv)
		FUNC5(prop);
	return rv;
}