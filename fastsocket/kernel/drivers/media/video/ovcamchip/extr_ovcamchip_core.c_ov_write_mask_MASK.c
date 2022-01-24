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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,unsigned char,unsigned char*) ; 
 int FUNC1 (struct i2c_client*,unsigned char,unsigned char) ; 

int FUNC2(struct i2c_client *c,
		  unsigned char reg,
		  unsigned char value,
		  unsigned char mask)
{
	int rc;
	unsigned char oldval, newval;

	if (mask == 0xff) {
		newval = value;
	} else {
		rc = FUNC0(c, reg, &oldval);
		if (rc < 0)
			return rc;

		oldval &= (~mask);		/* Clear the masked bits */
		value &= mask;			/* Enforce mask on value */
		newval = oldval | value;	/* Set the desired bits */
	}

	return FUNC1(c, reg, newval);
}