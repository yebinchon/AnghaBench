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
struct usb_stv {unsigned char origMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct usb_stv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,struct usb_stv*,int,int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC6 (struct usb_stv *dev)
{
	int i;
	unsigned char *buf;

	buf = FUNC2 (40, GFP_KERNEL);
	if (buf == NULL) {
		FUNC0 (0, "STV(e): Out of (small buf) memory");
		return -1;
	}

	/* this is a high priority command; it stops all lower order commands */
	if ((i = FUNC5 (1, dev, 0x04, 0x0000, buf, 0x0)) < 0) {
		i = FUNC5 (0, dev, 0x80, 0, buf, 0x02);	/* Get Last Error; 2 = busy */
		FUNC0 (1, "STV(i): last error: %i,  command = 0x%x", buf[0], buf[1]);
	} else {
		FUNC0 (1, "STV(i): Camera reset to idle mode.");
	}

	if ((i = FUNC4 (dev, 1, 0, 0)) < 0)
		FUNC0 (1, "STV(e): Reset config during exit failed");

	/*  get current mode  */
	buf[0] = 0xf0;
	if ((i = FUNC5 (0, dev, 0x87, 0, buf, 0x08)) != 0x08)	/* get mode */
		FUNC0 (0, "STV(e): Stop_video: problem setting original mode");
	if (dev->origMode != buf[0]) {
		FUNC3 (buf, 0, 8);
		buf[0] = (unsigned char) dev->origMode;
		if ((i = FUNC5 (3, dev, 0x07, 0x0100, buf, 0x08)) != 0x08) {
			FUNC0 (0, "STV(e): Stop_video: Set_Camera_Mode failed");
			i = -1;
		}
		buf[0] = 0xf0;
		i = FUNC5 (0, dev, 0x87, 0, buf, 0x08);
		if ((i != 0x08) || (buf[0] != dev->origMode)) {
			FUNC0 (0, "STV(e): camera NOT set to original resolution.");
			i = -1;
		} else
			FUNC0 (0, "STV(i): Camera set to original resolution");
	}
	/* origMode */
	FUNC1(buf);
	return i;
}