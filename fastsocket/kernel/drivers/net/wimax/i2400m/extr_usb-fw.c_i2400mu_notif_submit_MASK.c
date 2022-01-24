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
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct urb {int dummy; } ;
struct i2400m {int /*<<< orphan*/  bm_ack_buf; } ;
struct i2400mu {int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  usb_iface; struct i2400m i2400m; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2400MU_EP_NOTIFICATION ; 
 int /*<<< orphan*/  I2400M_BM_ACK_BUF_SIZE ; 
 int /*<<< orphan*/  __i2400mu_bm_notif_cb ; 
 int /*<<< orphan*/  FUNC0 (struct urb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct completion*,int /*<<< orphan*/ ) ; 
 struct usb_endpoint_descriptor* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC4(struct i2400mu *i2400mu, struct urb *urb,
			 struct completion *completion)
{
	struct i2400m *i2400m = &i2400mu->i2400m;
	struct usb_endpoint_descriptor *epd;
	int pipe;

	epd = FUNC1(i2400mu->usb_iface, I2400MU_EP_NOTIFICATION);
	pipe = FUNC2(i2400mu->usb_dev, epd->bEndpointAddress);
	FUNC0(urb, i2400mu->usb_dev, pipe,
			 i2400m->bm_ack_buf, I2400M_BM_ACK_BUF_SIZE,
			 __i2400mu_bm_notif_cb, completion,
			 epd->bInterval);
	return FUNC3(urb, GFP_KERNEL);
}