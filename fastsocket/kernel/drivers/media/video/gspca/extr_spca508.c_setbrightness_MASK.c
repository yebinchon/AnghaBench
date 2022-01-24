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
typedef  int /*<<< orphan*/  u8 ;
struct sd {int /*<<< orphan*/  brightness; } ;
struct gspca_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	u8 brightness = sd->brightness;

	/* MX seem contrast */
	FUNC0(gspca_dev->dev, 0x8651, brightness);
	FUNC0(gspca_dev->dev, 0x8652, brightness);
	FUNC0(gspca_dev->dev, 0x8653, brightness);
	FUNC0(gspca_dev->dev, 0x8654, brightness);
}