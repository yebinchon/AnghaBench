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
typedef  scalar_t__ u32 ;
struct cx18 {int /*<<< orphan*/  ana_capturing; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX18_CPU_SET_AUDIO_MUTE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ CX18_INVALID_TASK_HANDLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18*,int /*<<< orphan*/ ,int,scalar_t__,int) ; 

void FUNC5(struct cx18 *cx)
{
	u32 h;
	if (FUNC2(&cx->ana_capturing)) {
		h = FUNC3(cx);
		if (h != CX18_INVALID_TASK_HANDLE)
			FUNC4(cx, CX18_CPU_SET_AUDIO_MUTE, 2, h, 1);
		else
			FUNC1("Can't find valid task handle for mute\n");
	}
	FUNC0("Mute\n");
}