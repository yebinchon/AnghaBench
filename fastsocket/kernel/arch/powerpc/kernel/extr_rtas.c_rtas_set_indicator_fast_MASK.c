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
 int ENOENT ; 
 int RTAS_UNKNOWN_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*) ; 

int FUNC4(int indicator, int index, int new_value)
{
	int rc;
	int token = FUNC3("set-indicator");

	if (token == RTAS_UNKNOWN_SERVICE)
		return -ENOENT;

	rc = FUNC1(token, 3, 1, NULL, indicator, index, new_value);

	FUNC0(rc == -2 || (rc >= 9900 && rc <= 9905));

	if (rc < 0)
		return FUNC2(rc);

	return rc;
}