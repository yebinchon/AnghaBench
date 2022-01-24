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
struct dasd_devmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_BUS_ID_SIZE ; 
 int DASD_FEATURE_INITIAL_ONLINE ; 
 int EINVAL ; 
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dasd_devmap*) ; 
 struct dasd_devmap* FUNC2 (char*,int) ; 
 int FUNC3 (char**,int*,int*,int*) ; 
 int FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC8( char *parsestring ) {

	struct dasd_devmap *devmap;
	int from, from_id0, from_id1;
	int to, to_id0, to_id1;
	int features, rc;
	char bus_id[DASD_BUS_ID_SIZE+1], *str;

	str = parsestring;
	rc = FUNC3(&str, &from_id0, &from_id1, &from);
	if (rc == 0) {
		to = from;
		to_id0 = from_id0;
		to_id1 = from_id1;
		if (*str == '-') {
			str++;
			rc = FUNC3(&str, &to_id0, &to_id1, &to);
		}
	}
	if (rc == 0 &&
	    (from_id0 != to_id0 || from_id1 != to_id1 || from > to))
		rc = -EINVAL;
	if (rc) {
		FUNC5("%s is not a valid device range\n", parsestring);
		return FUNC0(rc);
	}
	features = FUNC4(str, &str);
	if (features < 0)
		return FUNC0(-EINVAL);
	/* each device in dasd= parameter should be set initially online */
	features |= DASD_FEATURE_INITIAL_ONLINE;
	while (from <= to) {
		FUNC7(bus_id, "%01x.%01x.%04x",
			from_id0, from_id1, from++);
		devmap = FUNC2(bus_id, features);
		if (FUNC1(devmap))
			return (char *)devmap;
	}
	if (*str == ',')
		return str + 1;
	if (*str == '\0')
		return str;
	FUNC6("The dasd= parameter value %s has an invalid ending\n",
		   str);
	return FUNC0(-EINVAL);
}