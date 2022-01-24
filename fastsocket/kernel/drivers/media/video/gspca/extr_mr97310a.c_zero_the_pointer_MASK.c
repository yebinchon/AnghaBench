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
typedef  int u8 ;
struct gspca_dev {int* usb_buf; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct gspca_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gspca_dev*,int) ; 
 int FUNC3 (struct gspca_dev*,int) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev)
{
	__u8 *data = gspca_dev->usb_buf;
	int err_code;
	u8 status = 0;
	int tries = 0;

	err_code = FUNC1(gspca_dev, 0x21, 0);
	if (err_code < 0)
		return err_code;

	data[0] = 0x19;
	data[1] = 0x51;
	err_code = FUNC3(gspca_dev, 2);
	if (err_code < 0)
		return err_code;

	err_code = FUNC1(gspca_dev, 0x21, 0);
	if (err_code < 0)
		return err_code;

	data[0] = 0x19;
	data[1] = 0xba;
	err_code = FUNC3(gspca_dev, 2);
	if (err_code < 0)
		return err_code;

	err_code = FUNC1(gspca_dev, 0x21, 0);
	if (err_code < 0)
		return err_code;

	data[0] = 0x19;
	data[1] = 0x00;
	err_code = FUNC3(gspca_dev, 2);
	if (err_code < 0)
		return err_code;

	err_code = FUNC1(gspca_dev, 0x21, 0);
	if (err_code < 0)
		return err_code;

	data[0] = 0x19;
	data[1] = 0x00;
	err_code = FUNC3(gspca_dev, 2);
	if (err_code < 0)
		return err_code;

	while (status != 0x0a && tries < 256) {
		err_code = FUNC1(gspca_dev, 0x21, 0);
		status = data[0];
		tries++;
		if (err_code < 0)
			return err_code;
	}
	if (status != 0x0a)
		FUNC0(D_ERR, "status is %02x", status);

	tries = 0;
	while (tries < 4) {
		data[0] = 0x19;
		data[1] = 0x00;
		err_code = FUNC3(gspca_dev, 2);
		if (err_code < 0)
			return err_code;

		err_code = FUNC1(gspca_dev, 0x21, 0);
		status = data[0];
		tries++;
		if (err_code < 0)
			return err_code;
	}

	data[0] = 0x19;
	err_code = FUNC3(gspca_dev, 1);
	if (err_code < 0)
		return err_code;

	err_code = FUNC2(gspca_dev, 16);
	if (err_code < 0)
		return err_code;

	return 0;
}