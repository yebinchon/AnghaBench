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
 int RTAS_BUSY ; 
 int RTAS_UNKNOWN_SERVICE ; 
 int FUNC0 (int,int,int,int*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(int powerdomain, int *level)
{
	int token = FUNC2("get-power-level");
	int rc;

	if (token == RTAS_UNKNOWN_SERVICE)
		return -ENOENT;

	while ((rc = FUNC0(token, 1, 2, level, powerdomain)) == RTAS_BUSY)
		FUNC3(1);

	if (rc < 0)
		return FUNC1(rc);
	return rc;
}