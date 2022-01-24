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
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int,int,int*,int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*) ; 

int FUNC4(int sensor, int index, int *state)
{
	int token = FUNC3("get-sensor-state");
	int rc;

	if (token == RTAS_UNKNOWN_SERVICE)
		return -ENOENT;

	do {
		rc = FUNC1(token, 2, 2, state, sensor, index);
	} while (FUNC0(rc));

	if (rc < 0)
		return FUNC2(rc);
	return rc;
}