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
 int MORE_OUTPUT ; 
 int STATUS_DIR ; 
 int STATUS_DMA ; 
 int STATUS_READY ; 
 int FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static int FUNC2(void)
{
	int status;

	if ((status = FUNC1()) < 0)
		return -1;
	if ((status & (STATUS_READY | STATUS_DIR | STATUS_DMA)) == STATUS_READY)
		return MORE_OUTPUT;
	return FUNC0();
}