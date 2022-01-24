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
struct usb_stv {int VideoMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_stv*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,struct usb_stv*,int,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_stv*) ; 

__attribute__((used)) static int FUNC6 (struct usb_stv *dev)
{
	int i, stop_video = 1;
	unsigned char *buf;

	buf = FUNC2 (40, GFP_KERNEL);
	if (buf == NULL) {
		FUNC0 (0, "STV(e): Out of (small buf) memory");
		return -1;
	}

	if ((i = FUNC3 (dev, 1, 0, 0)) < 0) {
		FUNC1(buf);
		return i;
	}

	i = FUNC4 (2, dev, 0x06, 0x0100, buf, 0x12);
	if (!(i > 0) && (buf[8] == 0x53) && (buf[9] == 0x05)) {
		FUNC0 (1, "STV(e): Could not get descriptor 0100.");
		goto error;
	}

	/*  set alternate interface 1 */
	if ((i = FUNC3 (dev, 1, 0, 1)) < 0)
		goto error;

	if ((i = FUNC4 (0, dev, 0x85, 0, buf, 0x10)) != 0x10)
		goto error;
	FUNC0 (1, "STV(i): Setting video mode.");
	/*  Switch to Video mode: 0x0100 = VGA (640x480), 0x0000 = CIF (352x288) 0x0300 = QVGA (320x240)  */
	if ((i = FUNC4 (1, dev, 0x09, dev->VideoMode, buf, 0x0)) < 0) {
		stop_video = 0;
		goto error;
	}
	goto exit;

error:
	FUNC1(buf);
	if (stop_video == 1)
		FUNC5 (dev);
	return -1;

exit:
	FUNC1(buf);
	return 0;
}