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
struct gspca_dev {int /*<<< orphan*/  alt; int /*<<< orphan*/  iface; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  D_PACK ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev)
{
	if (FUNC3(gspca_dev->dev, gspca_dev->iface, 0) < 0) {
		FUNC0(D_ERR, "Set packet size: set interface error");
		goto error;
	}
	FUNC2(gspca_dev);

	FUNC1(gspca_dev, 0x0d00, 1);

	/* need alt setting here */
	FUNC0(D_PACK, "ClickSmart310 sync alt: %d", gspca_dev->alt);

	/* Windoze use pipe with altsetting 6 why 7 here */
	if (FUNC3(gspca_dev->dev,
				gspca_dev->iface,
				gspca_dev->alt) < 0) {
		FUNC0(D_ERR, "Set packet size: set interface error");
		goto error;
	}
	return 0;
error:
	return -EBUSY;
}