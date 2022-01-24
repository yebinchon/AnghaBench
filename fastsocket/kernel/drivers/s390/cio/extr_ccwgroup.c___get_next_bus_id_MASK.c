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

/* Variables and functions */
 int CCW_BUS_ID_SIZE ; 
 int EINVAL ; 
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(const char **buf, char *bus_id)
{
	int rc, len;
	char *start, *end;

	start = (char *)*buf;
	end = FUNC0(start, ',');
	if (!end) {
		/* Last entry. Strip trailing newline, if applicable. */
		end = FUNC0(start, '\n');
		if (end)
			*end = '\0';
		len = FUNC2(start) + 1;
	} else {
		len = end - start + 1;
		end++;
	}
	if (len < CCW_BUS_ID_SIZE) {
		FUNC1(bus_id, start, len);
		rc = 0;
	} else
		rc = -EINVAL;
	*buf = end;
	return rc;
}