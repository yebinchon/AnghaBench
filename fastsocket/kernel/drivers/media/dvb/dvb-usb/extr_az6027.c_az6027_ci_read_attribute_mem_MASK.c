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
typedef  int u8 ;
typedef  int u16 ;
struct dvb_usb_device {scalar_t__ priv; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct az6027_device_state {int /*<<< orphan*/  ca_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct dvb_usb_device*,int,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(struct dvb_ca_en50221 *ca,
					int slot,
					int address)
{
	struct dvb_usb_device *d = (struct dvb_usb_device *)ca->data;
	struct az6027_device_state *state = (struct az6027_device_state *)d->priv;

	int ret;
	u8 req;
	u16 value;
	u16 index;
	int blen;
	u8 *b;

	if (slot != 0)
		return -EINVAL;

	b = FUNC2(12, GFP_KERNEL);
	if (!b)
		return -ENOMEM;

	FUNC3(&state->ca_mutex);

	req = 0xC1;
	value = address;
	index = 0;
	blen = 1;

	ret = FUNC0(d, req, value, index, b, blen);
	if (ret < 0) {
		FUNC5("usb in operation failed. (%d)", ret);
		ret = -EINVAL;
	} else {
		ret = b[0];
	}

	FUNC4(&state->ca_mutex);
	FUNC1(b);
	return ret;
}