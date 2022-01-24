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
struct efx_nic {int dummy; } ;
typedef  enum efx_led_mode { ____Placeholder_efx_led_mode } efx_led_mode ;

/* Variables and functions */
 int EFX_LED_ON ; 
 int /*<<< orphan*/  QUAKE_LED_OFF ; 
 int /*<<< orphan*/  QUAKE_LED_ON ; 
 int /*<<< orphan*/  SFE4002_FAULT_LED ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct efx_nic *efx, enum efx_led_mode mode)
{
	FUNC0(
		efx, SFE4002_FAULT_LED,
		(mode == EFX_LED_ON) ? QUAKE_LED_ON : QUAKE_LED_OFF);
}