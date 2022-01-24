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
struct lm85_data {scalar_t__ type; int vid; int /*<<< orphan*/  vrm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ adt7463 ; 
 scalar_t__ adt7468 ; 
 struct lm85_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
		char *buf)
{
	struct lm85_data *data = FUNC0(dev);
	int vid;

	if ((data->type == adt7463 || data->type == adt7468) &&
	    (data->vid & 0x80)) {
		/* 6-pin VID (VRM 10) */
		vid = FUNC2(data->vid & 0x3f, data->vrm);
	} else {
		/* 5-pin VID (VRM 9) */
		vid = FUNC2(data->vid & 0x1f, data->vrm);
	}

	return FUNC1(buf, "%d\n", vid);
}