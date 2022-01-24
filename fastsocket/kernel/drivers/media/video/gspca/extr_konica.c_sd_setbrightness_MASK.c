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
struct sd {int /*<<< orphan*/  brightness; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef  int /*<<< orphan*/  __s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BRIGHTNESS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev, __s32 val)
{
	struct sd *sd = (struct sd *) gspca_dev;

	sd->brightness = val;
	if (gspca_dev->streaming) {
		FUNC0(gspca_dev);
		FUNC2(gspca_dev, sd->brightness, BRIGHTNESS_REG);
		FUNC1(gspca_dev);
	}

	return 0;
}