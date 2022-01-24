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
 int PROT_EXEC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  UM_THREAD_SIZE ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

void FUNC2(unsigned long address)
{
	if (FUNC0((void *) address, UM_THREAD_SIZE,
		    PROT_READ | PROT_WRITE | PROT_EXEC) < 0)
		FUNC1("protecting stack failed, errno = %d", errno);
}