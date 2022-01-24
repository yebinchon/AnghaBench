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
 int FUNC0 (struct usb_ov511*,unsigned char) ; 
 int FUNC1 (struct usb_ov511*,unsigned char,unsigned char) ; 

__attribute__((used)) static int
FUNC2(struct usb_ov511 *ov,
	   unsigned char reg,
	   unsigned char value,
	   unsigned char mask)
{
	int ret;
	unsigned char oldval, newval;

	ret = FUNC0(ov, reg);
	if (ret < 0)
		return ret;

	oldval = (unsigned char) ret;
	oldval &= (~mask);		/* Clear the masked bits */
	value &= mask;			/* Enforce mask on value */
	newval = oldval | value;	/* Set the desired bits */

	return (FUNC1(ov, reg, newval));
}