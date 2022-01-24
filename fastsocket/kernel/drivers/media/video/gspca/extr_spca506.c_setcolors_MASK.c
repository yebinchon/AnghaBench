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
struct sd {int colors; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int SAA7113_saturation ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	FUNC0(gspca_dev);
	FUNC1(gspca_dev, sd->colors, SAA7113_saturation);
	FUNC1(gspca_dev, 0x01, 0x09);
}