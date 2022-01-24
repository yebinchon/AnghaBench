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
 int bufsize ; 
 int FUNC0 () ; 

__attribute__((used)) static int FUNC1(void)
{
	int offs;

	if (bufsize < 32768)
		offs = FUNC0();
	else
		offs = (FUNC0() << 15) | FUNC0();
	offs %= bufsize;
	return offs;
}