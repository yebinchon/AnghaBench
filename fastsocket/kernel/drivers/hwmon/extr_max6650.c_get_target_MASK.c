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
struct max6650_data {int speed; int /*<<< orphan*/  config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int clock ; 
 struct max6650_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *devattr,
			 char *buf)
{
	struct max6650_data *data = FUNC1(dev);
	int kscale, ktach, rpm;

	/*
	* Use the datasheet equation:
	*
	*    FanSpeed = KSCALE x fCLK / [256 x (KTACH + 1)]
	*
	* then multiply by 60 to give rpm.
	*/

	kscale = FUNC0(data->config);
	ktach = data->speed;
	rpm = 60 * kscale * clock / (256 * (ktach + 1));
	return FUNC2(buf, "%d\n", rpm);
}