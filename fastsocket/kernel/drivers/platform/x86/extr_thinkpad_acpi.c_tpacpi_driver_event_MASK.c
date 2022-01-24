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
#define  TP_HKEY_EV_BRGHT_DOWN 129 
#define  TP_HKEY_EV_BRGHT_UP 128 
 scalar_t__ ibm_backlight_device ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void FUNC1(const unsigned int hkey_event)
{
	if (ibm_backlight_device) {
		switch (hkey_event) {
		case TP_HKEY_EV_BRGHT_UP:
		case TP_HKEY_EV_BRGHT_DOWN:
			FUNC0();
		}
	}
}