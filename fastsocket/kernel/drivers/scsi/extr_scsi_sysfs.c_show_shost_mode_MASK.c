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
typedef  int ssize_t ;

/* Variables and functions */
 unsigned int MODE_INITIATOR ; 
 unsigned int MODE_TARGET ; 
 int FUNC0 (char*,char*,...) ; 

__attribute__((used)) static ssize_t
FUNC1(unsigned int mode, char *buf)
{
	ssize_t len = 0;

	if (mode & MODE_INITIATOR)
		len = FUNC0(buf, "%s", "Initiator");

	if (mode & MODE_TARGET)
		len += FUNC0(buf + len, "%s%s", len ? ", " : "", "Target");

	len += FUNC0(buf + len, "\n");

	return len;
}