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
struct ivtv {int /*<<< orphan*/  capturing; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_ENC_MUTE_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv*,int /*<<< orphan*/ ,int,int) ; 

void FUNC3(struct ivtv *itv)
{
	if (FUNC1(&itv->capturing))
		FUNC2(itv, CX2341X_ENC_MUTE_AUDIO, 1, 1);
	FUNC0("Mute\n");
}