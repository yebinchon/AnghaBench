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
 unsigned long H_BUSY ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  vtermno ; 

__attribute__((used)) static void FUNC1(char c)
{
	char buf[16];
	unsigned long rc;

	if (c == '\n')
		FUNC1('\r');

	buf[0] = c;
	do {
		rc = FUNC0(vtermno, 1, buf);
	} while(rc == H_BUSY);
}