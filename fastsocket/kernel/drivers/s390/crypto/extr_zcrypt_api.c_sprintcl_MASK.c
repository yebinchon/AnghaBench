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
 scalar_t__ FUNC0 (unsigned char*,char*,...) ; 

__attribute__((used)) static int FUNC1(unsigned char *outaddr, unsigned char *addr,
		    unsigned int len)
{
	int hl, i;

	hl = 0;
	for (i = 0; i < len; i++)
		hl += FUNC0(outaddr+hl, "%01x", (unsigned int) addr[i]);
	hl += FUNC0(outaddr+hl, " ");
	return hl;
}