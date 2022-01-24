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
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char) ; 
 int /*<<< orphan*/  R51x_SYS_RESET ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct usb_ov511*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int
FUNC3(struct usb_ov511 *ov, unsigned char reset_type)
{
	int rc;

	/* Setting bit 0 not allowed on 518/518Plus */
	if (ov->bclass == BCL_OV518)
		reset_type &= 0xfe;

	FUNC0(4, "Reset: type=0x%02X", reset_type);

	rc = FUNC2(ov, R51x_SYS_RESET, reset_type);
	rc = FUNC2(ov, R51x_SYS_RESET, 0);

	if (rc < 0)
		FUNC1("reset: command failed");

	return rc;
}