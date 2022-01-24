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
struct usb_ov511 {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENABLE_UV_QUANTABLE ; 
 scalar_t__ ENABLE_Y_QUANTABLE ; 
 int OV518_QUANTABLESIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int R511_COMP_LUT_BEGIN ; 
 int FUNC1 (struct usb_ov511*,int,unsigned char) ; 
 unsigned char* uvQuanTable518 ; 
 unsigned char* yQuanTable518 ; 

__attribute__((used)) static int
FUNC2(struct usb_ov511 *ov)
{
	unsigned char *pYTable = yQuanTable518;
	unsigned char *pUVTable = uvQuanTable518;
	unsigned char val0, val1;
	int i, rc, reg = R511_COMP_LUT_BEGIN;

	FUNC0(4, "Uploading quantization tables");

	for (i = 0; i < OV518_QUANTABLESIZE / 2; i++) {
		if (ENABLE_Y_QUANTABLE) {
			val0 = *pYTable++;
			val1 = *pYTable++;
			val0 &= 0x0f;
			val1 &= 0x0f;
			val0 |= val1 << 4;
			rc = FUNC1(ov, reg, val0);
			if (rc < 0)
				return rc;
		}

		if (ENABLE_UV_QUANTABLE) {
			val0 = *pUVTable++;
			val1 = *pUVTable++;
			val0 &= 0x0f;
			val1 &= 0x0f;
			val0 |= val1 << 4;
			rc = FUNC1(ov, reg + OV518_QUANTABLESIZE/2, val0);
			if (rc < 0)
				return rc;
		}

		reg++;
	}

	return 0;
}