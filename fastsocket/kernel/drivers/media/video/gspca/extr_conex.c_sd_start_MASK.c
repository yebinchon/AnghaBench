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
struct sd {int /*<<< orphan*/  quality; int /*<<< orphan*/  jpeg_hdr; } ;
struct gspca_dev {int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	/* create the JPEG header */
	FUNC4(sd->jpeg_hdr, gspca_dev->height, gspca_dev->width,
			0x22);		/* JPEG 411 */
	FUNC5(sd->jpeg_hdr, sd->quality);

	FUNC1(gspca_dev);
	FUNC0(gspca_dev);
	FUNC3(gspca_dev);
	FUNC2(gspca_dev);
	return 0;
}