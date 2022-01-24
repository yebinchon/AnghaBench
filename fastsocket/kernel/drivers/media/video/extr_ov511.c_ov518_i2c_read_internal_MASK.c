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
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char,int) ; 
 int /*<<< orphan*/  R518_I2C_CTL ; 
 int /*<<< orphan*/  R51x_I2C_DATA ; 
 int /*<<< orphan*/  R51x_I2C_SADDR_2 ; 
 int FUNC1 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_ov511*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct usb_ov511 *ov, unsigned char reg)
{
	int rc, value;

	/* Select camera register */
	rc = FUNC2(ov, R51x_I2C_SADDR_2, reg);
	if (rc < 0)
		return rc;

	/* Initiate 2-byte write cycle */
	rc = FUNC2(ov, R518_I2C_CTL, 0x03);
	if (rc < 0)
		return rc;

	/* Initiate 2-byte read cycle */
	rc = FUNC2(ov, R518_I2C_CTL, 0x05);
	if (rc < 0)
		return rc;

	value = FUNC1(ov, R51x_I2C_DATA);

	FUNC0(5, "0x%02X:0x%02X", reg, value);

	return value;
}