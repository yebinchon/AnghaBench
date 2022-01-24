#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sd {size_t sensor; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 size_t SENSOR_OM6802 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* sensor_data ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	FUNC2(gspca_dev, sensor_data[sd->sensor].stream,
			sizeof sensor_data[sd->sensor].stream);
	FUNC2(gspca_dev, sensor_data[sd->sensor].stream,
			sizeof sensor_data[sd->sensor].stream);
	if (sd->sensor == SENSOR_OM6802) {
		FUNC0(20);
		FUNC1(gspca_dev, 0x0309);
	}
}