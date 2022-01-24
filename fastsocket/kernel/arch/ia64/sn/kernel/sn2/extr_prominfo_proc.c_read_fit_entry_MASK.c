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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FUNC0 (char*,unsigned long) ; 
 int FUNC1 (char*,char**,int /*<<< orphan*/ ,int,int*,int) ; 

__attribute__((used)) static int
FUNC2(char *page, char **start, off_t off, int count, int *eof,
	       void *data)
{
	int len;

	/* data holds the NASID of the node */
	len = FUNC0(page, (unsigned long)data);
	len = FUNC1(page, start, off, count, eof, len);

	return len;
}