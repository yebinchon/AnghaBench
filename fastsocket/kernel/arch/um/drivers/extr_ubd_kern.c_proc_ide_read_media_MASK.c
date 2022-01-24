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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(char *page, char **start, off_t off, int count,
			       int *eof, void *data)
{
	int len;

	FUNC0(page, "disk\n");
	len = FUNC1("disk\n");
	len -= off;
	if (len < count){
		*eof = 1;
		if (len <= 0) return 0;
	}
	else len = count;
	*start = page + off;
	return len;
}