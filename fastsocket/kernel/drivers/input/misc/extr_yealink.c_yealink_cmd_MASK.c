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
typedef  scalar_t__ u8 ;
struct yld_ctl_packet {scalar_t__ sum; } ;
struct yealink_dev {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_PKT_LEN ; 
 int USB_RECIP_INTERFACE ; 
 int /*<<< orphan*/  USB_REQ_SET_CONFIGURATION ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,struct yld_ctl_packet*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct yealink_dev *yld, struct yld_ctl_packet *p)
{
	u8	*buf = (u8 *)p;
	int	i;
	u8	sum = 0;

	for(i=0; i<USB_PKT_LEN-1; i++)
		sum -= buf[i];
	p->sum = sum;
	return FUNC0(yld->udev,
			FUNC1(yld->udev, 0),
			USB_REQ_SET_CONFIGURATION,
			USB_TYPE_CLASS | USB_RECIP_INTERFACE | USB_DIR_OUT,
			0x200, 3,
			p, sizeof(*p),
			USB_CTRL_SET_TIMEOUT);
}