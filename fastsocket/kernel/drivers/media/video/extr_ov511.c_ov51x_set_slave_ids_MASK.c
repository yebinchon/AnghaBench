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
 int /*<<< orphan*/  OV511_RESET_NOREGS ; 
 int FUNC0 (struct usb_ov511*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct usb_ov511*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct usb_ov511 *ov, unsigned char sid)
{
	int rc;

	FUNC1(&ov->i2c_lock);

	rc = FUNC0(ov, sid);
	if (rc < 0)
		goto out;

	// FIXME: Is this actually necessary?
	rc = FUNC3(ov, OV511_RESET_NOREGS);
out:
	FUNC2(&ov->i2c_lock);
	return rc;
}