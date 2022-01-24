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
 int FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(char *s)
{
	int cid;

	if (s[-1] != ';')
		return 0;	/* no CID separator */
	cid = FUNC0(s);
	if (cid < 0)
		return 0;	/* CID not numeric */
	if (cid < 1 || cid > 65535)
		return -1;	/* CID out of range */
	return cid;
	//FIXME is ;<digit>+ at end of non-CID response really impossible?
}