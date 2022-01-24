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
struct sd {int dummy; } ;
struct gspca_dev {int usb_err; } ;

/* Variables and functions */
 int FUNC0 (struct sd*) ; 
 int FUNC1 (struct sd*,int,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	int err;
	struct sd *sd = (struct sd *) gspca_dev;

	err = FUNC0(sd);

	/* commit settings */
	if (err >= 0)
		err = FUNC1(sd, 0x143f, 0x01);

	gspca_dev->usb_err = err;
}