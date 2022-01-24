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
struct usb_ov511 {scalar_t__ bclass; } ;

/* Variables and functions */
 scalar_t__ BCL_OV518 ; 
 int FUNC0 (struct usb_ov511*,unsigned char) ; 
 int FUNC1 (struct usb_ov511*,unsigned char,unsigned char) ; 
 int FUNC2 (struct usb_ov511*,unsigned char) ; 
 int FUNC3 (struct usb_ov511*,unsigned char,unsigned char) ; 

__attribute__((used)) static int
FUNC4(struct usb_ov511 *ov,
			      unsigned char reg,
			      unsigned char value,
			      unsigned char mask)
{
	int rc;
	unsigned char oldval, newval;

	if (mask == 0xff) {
		newval = value;
	} else {
		if (ov->bclass == BCL_OV518)
			rc = FUNC2(ov, reg);
		else
			rc = FUNC0(ov, reg);
		if (rc < 0)
			return rc;

		oldval = (unsigned char) rc;
		oldval &= (~mask);		/* Clear the masked bits */
		value &= mask;			/* Enforce mask on value */
		newval = oldval | value;	/* Set the desired bits */
	}

	if (ov->bclass == BCL_OV518)
		return (FUNC3(ov, reg, newval));
	else
		return (FUNC1(ov, reg, newval));
}