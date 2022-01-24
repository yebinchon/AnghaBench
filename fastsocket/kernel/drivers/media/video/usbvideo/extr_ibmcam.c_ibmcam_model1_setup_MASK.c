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
struct uvd {int videosize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct uvd*) ; 
 int EFAULT ; 
#define  VIDEOSIZE_128x96 130 
#define  VIDEOSIZE_176x144 129 
#define  VIDEOSIZE_352x288 128 
 int contrast_14 ; 
 int /*<<< orphan*/  FUNC1 (struct uvd*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uvd*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uvd*,int,int,int) ; 
 int light_27 ; 
 int lighting ; 
 int sharp_13 ; 

__attribute__((used)) static int FUNC4(struct uvd *uvd)
{
	const int ntries = 5;
	int i;

	FUNC3(uvd, 1, 0x00, 0x0128);
	FUNC3(uvd, 1, 0x00, 0x0100);
	FUNC3(uvd, 0, 0x01, 0x0100);	/* LED On  */
	FUNC3(uvd, 1, 0x00, 0x0100);
	FUNC3(uvd, 0, 0x81, 0x0100);	/* LED Off */
	FUNC3(uvd, 1, 0x00, 0x0100);
	FUNC3(uvd, 0, 0x01, 0x0100);	/* LED On  */
	FUNC3(uvd, 0, 0x01, 0x0108);

	FUNC3(uvd, 0, 0x03, 0x0112);
	FUNC3(uvd, 1, 0x00, 0x0115);
	FUNC3(uvd, 0, 0x06, 0x0115);
	FUNC3(uvd, 1, 0x00, 0x0116);
	FUNC3(uvd, 0, 0x44, 0x0116);
	FUNC3(uvd, 1, 0x00, 0x0116);
	FUNC3(uvd, 0, 0x40, 0x0116);
	FUNC3(uvd, 1, 0x00, 0x0115);
	FUNC3(uvd, 0, 0x0e, 0x0115);
	FUNC3(uvd, 0, 0x19, 0x012c);

	FUNC2(uvd, 0x00, 0x1e);
	FUNC2(uvd, 0x39, 0x0d);
	FUNC2(uvd, 0x39, 0x09);
	FUNC2(uvd, 0x3b, 0x00);
	FUNC2(uvd, 0x28, 0x22);
	FUNC2(uvd, light_27, 0);
	FUNC2(uvd, 0x2b, 0x1f);
	FUNC2(uvd, 0x39, 0x08);

	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x2c, 0x00);

	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x30, 0x14);

	FUNC1(uvd, 0x39, 0x02);
	FUNC1(uvd, 0x01, 0xe1);
	FUNC1(uvd, 0x02, 0xcd);
	FUNC1(uvd, 0x03, 0xcd);
	FUNC1(uvd, 0x04, 0xfa);
	FUNC1(uvd, 0x3f, 0xff);
	FUNC1(uvd, 0x39, 0x00);

	FUNC1(uvd, 0x39, 0x02);
	FUNC1(uvd, 0x0a, 0x37);
	FUNC1(uvd, 0x0b, 0xb8);
	FUNC1(uvd, 0x0c, 0xf3);
	FUNC1(uvd, 0x0d, 0xe3);
	FUNC1(uvd, 0x0e, 0x0d);
	FUNC1(uvd, 0x0f, 0xf2);
	FUNC1(uvd, 0x10, 0xd5);
	FUNC1(uvd, 0x11, 0xba);
	FUNC1(uvd, 0x12, 0x53);
	FUNC1(uvd, 0x3f, 0xff);
	FUNC1(uvd, 0x39, 0x00);

	FUNC1(uvd, 0x39, 0x02);
	FUNC1(uvd, 0x16, 0x00);
	FUNC1(uvd, 0x17, 0x28);
	FUNC1(uvd, 0x18, 0x7d);
	FUNC1(uvd, 0x19, 0xbe);
	FUNC1(uvd, 0x3f, 0xff);
	FUNC1(uvd, 0x39, 0x00);

	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x00, 0x18);
	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x13, 0x18);
	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x14, 0x06);

	/* This is default brightness */
	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x31, 0x37);
	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x32, 0x46);
	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x33, 0x55);

	FUNC2(uvd, 0x2e, 0x04);
	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x2d, 0x04);
	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x29, 0x80);
	FUNC2(uvd, 0x2c, 0x01);
	FUNC2(uvd, 0x30, 0x17);
	FUNC2(uvd, 0x39, 0x08);
	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x34, 0x00);

	FUNC3(uvd, 0, 0x00, 0x0101);
	FUNC3(uvd, 0, 0x00, 0x010a);

	switch (uvd->videosize) {
	case VIDEOSIZE_128x96:
		FUNC3(uvd, 0, 0x80, 0x0103);
		FUNC3(uvd, 0, 0x60, 0x0105);
		FUNC3(uvd, 0, 0x0c, 0x010b);
		FUNC3(uvd, 0, 0x04, 0x011b);	/* Same everywhere */
		FUNC3(uvd, 0, 0x0b, 0x011d);
		FUNC3(uvd, 0, 0x00, 0x011e);	/* Same everywhere */
		FUNC3(uvd, 0, 0x00, 0x0129);
		break;
	case VIDEOSIZE_176x144:
		FUNC3(uvd, 0, 0xb0, 0x0103);
		FUNC3(uvd, 0, 0x8f, 0x0105);
		FUNC3(uvd, 0, 0x06, 0x010b);
		FUNC3(uvd, 0, 0x04, 0x011b);	/* Same everywhere */
		FUNC3(uvd, 0, 0x0d, 0x011d);
		FUNC3(uvd, 0, 0x00, 0x011e);	/* Same everywhere */
		FUNC3(uvd, 0, 0x03, 0x0129);
		break;
	case VIDEOSIZE_352x288:
		FUNC3(uvd, 0, 0xb0, 0x0103);
		FUNC3(uvd, 0, 0x90, 0x0105);
		FUNC3(uvd, 0, 0x02, 0x010b);
		FUNC3(uvd, 0, 0x04, 0x011b);	/* Same everywhere */
		FUNC3(uvd, 0, 0x05, 0x011d);
		FUNC3(uvd, 0, 0x00, 0x011e);	/* Same everywhere */
		FUNC3(uvd, 0, 0x00, 0x0129);
		break;
	}

	FUNC3(uvd, 0, 0xff, 0x012b);

	/* This is another brightness - don't know why */
	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x31, 0xc3);
	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x32, 0xd2);
	for (i=0; i < ntries; i++)
		FUNC2(uvd, 0x33, 0xe1);

	/* Default contrast */
	for (i=0; i < ntries; i++)
		FUNC2(uvd, contrast_14, 0x0a);

	/* Default sharpness */
	for (i=0; i < 2; i++)
		FUNC1(uvd, sharp_13, 0x1a);	/* Level 4 FIXME */

	/* Default lighting conditions */
	FUNC2(uvd, light_27, lighting); /* 0=Bright 2=Low */

	/* Assorted init */

	switch (uvd->videosize) {
	case VIDEOSIZE_128x96:
		FUNC2(uvd, 0x2b, 0x1e);
		FUNC3(uvd, 0, 0xc9, 0x0119);	/* Same everywhere */
		FUNC3(uvd, 0, 0x80, 0x0109);	/* Same everywhere */
		FUNC3(uvd, 0, 0x36, 0x0102);
		FUNC3(uvd, 0, 0x1a, 0x0104);
		FUNC3(uvd, 0, 0x04, 0x011a);	/* Same everywhere */
		FUNC3(uvd, 0, 0x2b, 0x011c);
		FUNC3(uvd, 0, 0x23, 0x012a);	/* Same everywhere */
#if 0
		ibmcam_veio(uvd, 0, 0x00, 0x0106);
		ibmcam_veio(uvd, 0, 0x38, 0x0107);
#else
		FUNC3(uvd, 0, 0x02, 0x0106);
		FUNC3(uvd, 0, 0x2a, 0x0107);
#endif
		break;
	case VIDEOSIZE_176x144:
		FUNC2(uvd, 0x2b, 0x1e);
		FUNC3(uvd, 0, 0xc9, 0x0119);	/* Same everywhere */
		FUNC3(uvd, 0, 0x80, 0x0109);	/* Same everywhere */
		FUNC3(uvd, 0, 0x04, 0x0102);
		FUNC3(uvd, 0, 0x02, 0x0104);
		FUNC3(uvd, 0, 0x04, 0x011a);	/* Same everywhere */
		FUNC3(uvd, 0, 0x2b, 0x011c);
		FUNC3(uvd, 0, 0x23, 0x012a);	/* Same everywhere */
		FUNC3(uvd, 0, 0x01, 0x0106);
		FUNC3(uvd, 0, 0xca, 0x0107);
		break;
	case VIDEOSIZE_352x288:
		FUNC2(uvd, 0x2b, 0x1f);
		FUNC3(uvd, 0, 0xc9, 0x0119);	/* Same everywhere */
		FUNC3(uvd, 0, 0x80, 0x0109);	/* Same everywhere */
		FUNC3(uvd, 0, 0x08, 0x0102);
		FUNC3(uvd, 0, 0x01, 0x0104);
		FUNC3(uvd, 0, 0x04, 0x011a);	/* Same everywhere */
		FUNC3(uvd, 0, 0x2f, 0x011c);
		FUNC3(uvd, 0, 0x23, 0x012a);	/* Same everywhere */
		FUNC3(uvd, 0, 0x03, 0x0106);
		FUNC3(uvd, 0, 0xf6, 0x0107);
		break;
	}
	return (FUNC0(uvd) ? 0 : -EFAULT);
}