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
struct mceusb_dev {int /*<<< orphan*/  usb_ep_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCEUSB_RX ; 
 int /*<<< orphan*/  FUNC0 (struct mceusb_dev*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mceusb_dev *ir, unsigned char *data, int size)
{
	FUNC0(ir, ir->usb_ep_in, data, size, MCEUSB_RX);
}