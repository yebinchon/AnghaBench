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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SCI_MAX_IO_REQUESTS ; 
 int SCI_MAX_SEQ ; 
 int SCU_ABSOLUTE_MAX_UNSOLICITED_FRAMES ; 
 int SCU_MAX_COMPLETION_QUEUE_ENTRIES ; 
 int SCU_MAX_EVENTS ; 
 int SCU_MAX_UNSOLICITED_FRAMES ; 

__attribute__((used)) static inline void FUNC2(void)
{
	FUNC1(SCU_MAX_EVENTS);
	FUNC0(SCU_MAX_UNSOLICITED_FRAMES <= 8);
	FUNC1(SCU_MAX_UNSOLICITED_FRAMES);
	FUNC1(SCU_MAX_COMPLETION_QUEUE_ENTRIES);
	FUNC0(SCU_MAX_UNSOLICITED_FRAMES > SCU_ABSOLUTE_MAX_UNSOLICITED_FRAMES);
	FUNC1(SCI_MAX_IO_REQUESTS);
	FUNC1(SCI_MAX_SEQ);
}