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
struct sd {size_t effect; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_CONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * effects_table ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	FUNC2(gspca_dev, effects_table[sd->effect],
				sizeof effects_table[0]);
	if (sd->effect == 1 || sd->effect == 5) {
		FUNC0(D_CONF,
		       "This effect have been disabled for webcam \"safety\"");
		return;
	}

	if (sd->effect == 1 || sd->effect == 4)
		FUNC1(gspca_dev, 0x4aa6);
	else
		FUNC1(gspca_dev, 0xfaa6);
}