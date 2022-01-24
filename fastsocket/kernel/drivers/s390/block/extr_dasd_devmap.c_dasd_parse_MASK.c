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
 int /*<<< orphan*/  DBF_ALERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 char** dasd ; 
 char* FUNC3 (char*) ; 

int
FUNC4(void)
{
	int rc, i;
	char *parsestring;

	rc = 0;
	for (i = 0; i < 256; i++) {
		if (dasd[i] == NULL)
			break;
		parsestring = dasd[i];
		/* loop over the comma separated list in the parsestring */
		while (*parsestring) {
			parsestring = FUNC3(parsestring);
			if(FUNC1(parsestring)) {
				rc = FUNC2(parsestring);
				break;
			}
		}
		if (rc) {
			FUNC0(DBF_ALERT, "%s", "invalid range found");
			break;
		}
	}
	return rc;
}