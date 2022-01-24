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
struct radeon_device {int audio_enabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  EVERGREEN_AUDIO_ENABLE ; 
 int /*<<< orphan*/  R600_AUDIO_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev, bool enable)
{
	u32 value = 0;
	FUNC1("%s audio support\n", enable ? "Enabling" : "Disabling");
	if (FUNC0(rdev)) {
		if (enable) {
			value |= 0x81000000; /* Required to enable audio */
			value |= 0x0e1000f0; /* fglrx sets that too */
		}
		FUNC2(EVERGREEN_AUDIO_ENABLE, value);
	} else {
		FUNC3(R600_AUDIO_ENABLE,
			 enable ? 0x81000000 : 0x0, ~0x81000000);
	}
	rdev->audio_enabled = enable;
}