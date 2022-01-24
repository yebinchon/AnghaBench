#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uvd {int last_error; TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  cp ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uvd*) ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,unsigned char,int,unsigned short,unsigned short,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
	struct uvd *uvd,
	unsigned char req,
	unsigned short value,
	unsigned short index)
{
	static const char proc[] = "ibmcam_veio";
	unsigned char cp[8] /* = { 0xde, 0xad, 0xbe, 0xef, 0xde, 0xad, 0xbe, 0xef } */;
	int i;

	if (!FUNC0(uvd))
		return 0;

	if (req == 1) {
		i = FUNC3(
			uvd->dev,
			FUNC4(uvd->dev, 0),
			req,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT,
			value,
			index,
			cp,
			sizeof(cp),
			1000);
#if 0
		dev_info(&uvd->dev->dev,
			 "USB => %02x%02x%02x%02x%02x%02x%02x%02x "
			 "(req=$%02x val=$%04x ind=$%04x)\n",
			 cp[0],cp[1],cp[2],cp[3],cp[4],cp[5],cp[6],cp[7],
			 req, value, index);
#endif
	} else {
		i = FUNC3(
			uvd->dev,
			FUNC5(uvd->dev, 0),
			req,
			USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT,
			value,
			index,
			NULL,
			0,
			1000);
	}
	if (i < 0) {
		FUNC2("%s: ERROR=%d. Camera stopped; Reconnect or reload driver.",
		    proc, i);
		uvd->last_error = i;
	}
	return i;
}