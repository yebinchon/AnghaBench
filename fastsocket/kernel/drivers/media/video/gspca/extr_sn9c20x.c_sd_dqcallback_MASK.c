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
struct sd {scalar_t__ sensor; int /*<<< orphan*/  avg_lum; int /*<<< orphan*/  auto_exposure; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ SENSOR_SOI968 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int) ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int avg_lum;

	if (!sd->auto_exposure)
		return;

	avg_lum = FUNC0(&sd->avg_lum);
	if (sd->sensor == SENSOR_SOI968)
		FUNC2(gspca_dev, avg_lum);
	else
		FUNC1(gspca_dev, avg_lum);
}