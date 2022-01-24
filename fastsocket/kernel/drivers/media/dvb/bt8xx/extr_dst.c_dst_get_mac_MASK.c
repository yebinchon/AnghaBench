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
struct dst_state {int /*<<< orphan*/  mac_address; int /*<<< orphan*/  rxbuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_ERROR ; 
 int /*<<< orphan*/  DST_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC1 (int*,int) ; 
 scalar_t__ FUNC2 (struct dst_state*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC5(struct dst_state *state)
{
	u8 get_mac[] = { 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
	get_mac[7] = FUNC1(get_mac, 7);
	if (FUNC2(state, get_mac, 8) < 0) {
		FUNC0(verbose, DST_INFO, 1, "Unsupported Command");
		return -1;
	}
	FUNC4(&state->mac_address, '\0', 8);
	FUNC3(&state->mac_address, &state->rxbuffer, 6);
	FUNC0(verbose, DST_ERROR, 1, "MAC Address=[%pM]", state->mac_address);

	return 0;
}