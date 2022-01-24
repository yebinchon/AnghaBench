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
struct TYPE_2__ {int backlight; int brightness; int sharpness; int contrast; int saturation; int gamma; int hue; int whitebal; int mirror; int flip; int AC50Hz; } ;
struct sd {TYPE_1__ vold; scalar_t__ mirrorMask; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	sd->mirrorMask = 0;

	sd->vold.backlight  = -1;
	sd->vold.brightness = -1;
	sd->vold.sharpness  = -1;
	sd->vold.contrast   = -1;
	sd->vold.saturation = -1;
	sd->vold.gamma    = -1;
	sd->vold.hue      = -1;
	sd->vold.whitebal = -1;
	sd->vold.mirror   = -1;
	sd->vold.flip     = -1;
	sd->vold.AC50Hz   = -1;

	FUNC0(gspca_dev);

	FUNC2(gspca_dev);

	FUNC1(gspca_dev);

	return 0;
}