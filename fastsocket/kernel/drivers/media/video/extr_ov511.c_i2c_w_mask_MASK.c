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
struct usb_ov511 {int /*<<< orphan*/  i2c_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usb_ov511*,unsigned char,unsigned char,unsigned char) ; 

__attribute__((used)) static int
FUNC3(struct usb_ov511 *ov,
	   unsigned char reg,
	   unsigned char value,
	   unsigned char mask)
{
	int rc;

	FUNC0(&ov->i2c_lock);
	rc = FUNC2(ov, reg, value, mask);
	FUNC1(&ov->i2c_lock);

	return rc;
}