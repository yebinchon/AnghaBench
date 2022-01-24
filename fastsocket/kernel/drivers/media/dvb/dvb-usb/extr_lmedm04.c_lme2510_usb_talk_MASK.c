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
typedef  int /*<<< orphan*/  u8 ;
struct lme2510_state {int /*<<< orphan*/ * usb_buffer; } ;
struct dvb_usb_device {int /*<<< orphan*/  usb_mutex; int /*<<< orphan*/  udev; struct lme2510_state* priv; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct dvb_usb_device *d,
		u8 *wbuf, int wlen, u8 *rbuf, int rlen)
{
	struct lme2510_state *st = d->priv;
	u8 *buff;
	int ret = 0;

	if (st->usb_buffer == NULL) {
		st->usb_buffer = FUNC1(512, GFP_KERNEL);
		if (st->usb_buffer == NULL) {
			FUNC0("MEM Error no memory");
			return -ENOMEM;
		}
	}
	buff = st->usb_buffer;

	/* the read/write capped at 512 */
	FUNC4(buff, wbuf, (wlen > 512) ? 512 : wlen);

	ret = FUNC6(&d->usb_mutex);

	if (ret < 0)
		return -EAGAIN;

	ret |= FUNC8(d->udev, FUNC10(d->udev, 0x01));

	ret |= FUNC3(d->udev, buff, wlen , 0x01);

	FUNC5(10);

	ret |= FUNC8(d->udev, FUNC9(d->udev, 0x01));

	ret |= FUNC2(d->udev, buff, (rlen > 512) ?
			512 : rlen , 0x01);

	if (rlen > 0)
		FUNC4(rbuf, buff, rlen);

	FUNC7(&d->usb_mutex);

	return (ret < 0) ? -ENODEV : 0;
}