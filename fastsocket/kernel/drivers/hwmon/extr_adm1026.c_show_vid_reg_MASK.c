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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int gpio; int /*<<< orphan*/  vrm; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct adm1026_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct adm1026_data *data = FUNC0(dev);
	int vid = (data->gpio >> 11) & 0x1f;

	FUNC1(dev, "Setting VID from GPIO11-15.\n");
	return FUNC2(buf, "%d\n", FUNC3(vid, data->vrm));
}