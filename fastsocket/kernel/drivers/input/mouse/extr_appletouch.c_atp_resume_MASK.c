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
struct usb_interface {int dummy; } ;
struct atp {int /*<<< orphan*/  urb; scalar_t__ open; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct atp* FUNC0 (struct usb_interface*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_interface *iface)
{
	struct atp *dev = FUNC0(iface);

	if (dev->open && FUNC1(dev->urb, GFP_ATOMIC))
		return -EIO;

	return 0;
}