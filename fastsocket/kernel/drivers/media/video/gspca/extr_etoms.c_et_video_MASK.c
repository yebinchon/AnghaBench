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
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  ET_GPIO_OUT ; 
 int FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev,
		    int on)
{
	int ret;

	FUNC2(gspca_dev, ET_GPIO_OUT,
		  on ? 0x10		/* startvideo - set Bit5 */
		     : 0);		/* stopvideo */
	ret = FUNC0(gspca_dev);
	if (ret != 0)
		FUNC1(D_ERR, "timeout video on/off");
	return ret;
}