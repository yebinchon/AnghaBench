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
struct usb_ov511 {unsigned char primary_i2c_slave; int /*<<< orphan*/  i2c_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct usb_ov511*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct usb_ov511*,unsigned char,unsigned char,unsigned char) ; 

__attribute__((used)) static int
FUNC5(struct usb_ov511 *ov,
	    unsigned char slave,
	    unsigned char reg,
	    unsigned char value,
	    unsigned char mask)
{
	int rc = 0;

	FUNC2(&ov->i2c_lock);

	/* Set new slave IDs */
	rc = FUNC1(ov, slave);
	if (rc < 0)
		goto out;

	rc = FUNC4(ov, reg, value, mask);

out:
	/* Restore primary IDs */
	if (FUNC1(ov, ov->primary_i2c_slave) < 0)
		FUNC0("Couldn't restore primary I2C slave");

	FUNC3(&ov->i2c_lock);
	return rc;
}