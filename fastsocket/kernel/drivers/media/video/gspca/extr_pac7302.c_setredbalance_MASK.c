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
struct sd {int red_balance; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int D_CONF ; 
 int D_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	FUNC1(gspca_dev, 0xff, 0x00);		/* page 0 */
	FUNC1(gspca_dev, 0xc5, sd->red_balance);

	FUNC1(gspca_dev, 0xdc, 0x01);
	FUNC0(D_CONF|D_STREAM, "red_balance: %i", sd->red_balance);
}