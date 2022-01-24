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
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (unsigned char*) ; 

void FUNC3(unsigned char *cdb)
{
	int k, len;

	FUNC0(cdb, 0);
	len = FUNC2(cdb);
	/* print out all bytes in cdb */
	for (k = 0; k < len; ++k) 
		FUNC1(" %02x", cdb[k]);
	FUNC1("\n");
}