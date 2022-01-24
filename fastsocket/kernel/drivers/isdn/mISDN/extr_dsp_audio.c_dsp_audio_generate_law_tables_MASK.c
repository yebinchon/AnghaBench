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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dsp_audio_alaw_to_s32 ; 
 int /*<<< orphan*/ * dsp_audio_alaw_to_ulaw ; 
 int /*<<< orphan*/ * dsp_audio_ulaw_to_alaw ; 
 int /*<<< orphan*/ * dsp_audio_ulaw_to_s32 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	int i;
	for (i = 0; i < 256; i++)
		dsp_audio_alaw_to_s32[i] = FUNC0(FUNC3(i));

	for (i = 0; i < 256; i++)
		dsp_audio_ulaw_to_s32[i] = FUNC4(FUNC3(i));

	for (i = 0; i < 256; i++) {
		dsp_audio_alaw_to_ulaw[i] =
			FUNC2(dsp_audio_alaw_to_s32[i]);
		dsp_audio_ulaw_to_alaw[i] =
			FUNC1(dsp_audio_ulaw_to_s32[i]);
	}
}