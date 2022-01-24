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
typedef  int u8 ;
struct dst_state {int* fw_version; int /*<<< orphan*/  rxbuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_ERROR ; 
 int /*<<< orphan*/  DST_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC1 (int*,int) ; 
 scalar_t__ FUNC2 (struct dst_state*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC4(struct dst_state *state)
{
	u8 get_ver[] = { 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
	get_ver[7] = FUNC1(get_ver, 7);
	if (FUNC2(state, get_ver, 8) < 0) {
		FUNC0(verbose, DST_INFO, 1, "Unsupported Command");
		return -1;
	}
	FUNC3(&state->fw_version, &state->rxbuffer, 8);
	FUNC0(verbose, DST_ERROR, 1, "Firmware Ver = %x.%x Build = %02x, on %x:%x, %x-%x-20%02x",
		state->fw_version[0] >> 4, state->fw_version[0] & 0x0f,
		state->fw_version[1],
		state->fw_version[5], state->fw_version[6],
		state->fw_version[4], state->fw_version[3], state->fw_version[2]);

	return 0;
}