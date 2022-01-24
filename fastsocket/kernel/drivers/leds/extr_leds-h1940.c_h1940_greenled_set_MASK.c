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
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  H1940_LATCH_LED_FLASH ; 
 int /*<<< orphan*/  H1940_LATCH_LED_GREEN ; 
#define  LED_FULL 130 
#define  LED_HALF 129 
#define  LED_OFF 128 
 int /*<<< orphan*/  S3C2410_GPA7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct led_classdev *led_dev,
			       enum led_brightness value)
{
	switch (value) {
	case LED_HALF:
		FUNC0(0, H1940_LATCH_LED_FLASH);
		FUNC1(S3C2410_GPA7, 1);
		break;
	case LED_FULL:
		FUNC0(0, H1940_LATCH_LED_GREEN);
		FUNC1(S3C2410_GPA7, 1);
		break;
	default:
	case LED_OFF:
		FUNC0(H1940_LATCH_LED_FLASH, 0);
		FUNC0(H1940_LATCH_LED_GREEN, 0);
		FUNC1(S3C2410_GPA7, 0);
		break;
	}
}