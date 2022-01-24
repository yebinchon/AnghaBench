#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_3__ {int /*<<< orphan*/ * usb_buf; } ;
struct sd {TYPE_2__* sensor; TYPE_1__ gspca_dev; } ;
struct gspca_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_4__ {int /*<<< orphan*/  (* start ) (struct sd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  M5602_URB_MSG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	__u8 *buf = sd->gspca_dev.usb_buf;
	int err;

	/* Send start command to the camera */
	const u8 buffer[4] = {0x13, 0xf9, 0x0f, 0x01};

	if (sd->sensor->start)
		sd->sensor->start(sd);

	FUNC1(buf, buffer, sizeof(buffer));
	err = FUNC3(gspca_dev->dev,
			      FUNC4(gspca_dev->dev, 0),
			      0x04, 0x40, 0x19, 0x0000, buf,
			      sizeof(buffer), M5602_URB_MSG_TIMEOUT);

	FUNC0(D_STREAM, "Transfer started");
	return (err < 0) ? err : 0;
}