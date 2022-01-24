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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  S3C64XX_GPB5_I2C_SCL0 ; 
 int /*<<< orphan*/  S3C64XX_GPB6_I2C_SDA0 ; 
 int /*<<< orphan*/  S3C_GPIO_PULL_UP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct platform_device *dev)
{
	FUNC1(FUNC0(5), S3C64XX_GPB5_I2C_SCL0);
	FUNC1(FUNC0(6), S3C64XX_GPB6_I2C_SDA0);
	FUNC2(FUNC0(5), S3C_GPIO_PULL_UP);
	FUNC2(FUNC0(6), S3C_GPIO_PULL_UP);
}