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
 int N_SONY_RFKILL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__* sony_rfkill_devices ; 

__attribute__((used)) static void FUNC2(void)
{
	int i;

	for (i = 0; i < N_SONY_RFKILL; i++) {
		if (sony_rfkill_devices[i]) {
			FUNC1(sony_rfkill_devices[i]);
			FUNC0(sony_rfkill_devices[i]);
		}
	}
}