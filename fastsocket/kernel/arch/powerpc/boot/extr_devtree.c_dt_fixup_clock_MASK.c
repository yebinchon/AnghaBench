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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int) ; 

void FUNC4(const char *path, u32 freq)
{
	void *devp = FUNC1(path);

	if (devp) {
		FUNC2("%s: clock-frequency <- %x (%dMHz)\n\r", path, freq, FUNC0(freq));
		FUNC3(devp, "clock-frequency", freq);
	}
}