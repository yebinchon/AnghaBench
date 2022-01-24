#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_endpoint_descriptor {int /*<<< orphan*/  bEndpointAddress; } ;
struct i2400mu {TYPE_1__* usb_iface; int /*<<< orphan*/  usb_dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,void*,size_t,int*,int /*<<< orphan*/ ) ; 
 struct usb_endpoint_descriptor* FUNC7 (TYPE_1__*,unsigned int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC9(struct i2400mu *i2400mu,
			  const __le32 *barker,
			  size_t barker_size,
			  unsigned endpoint)
{
	struct usb_endpoint_descriptor *epd = NULL;
	int pipe, actual_len, ret;
	struct device *dev = &i2400mu->usb_iface->dev;
	void *buffer;
	int do_autopm = 1;

	ret = FUNC4(i2400mu->usb_iface);
	if (ret < 0) {
		FUNC0(dev, "RESET: can't get autopm: %d\n", ret);
		do_autopm = 0;
	}
	ret = -ENOMEM;
	buffer = FUNC2(barker_size, GFP_KERNEL);
	if (buffer == NULL)
		goto error_kzalloc;
	epd = FUNC7(i2400mu->usb_iface, endpoint);
	pipe = FUNC8(i2400mu->usb_dev, epd->bEndpointAddress);
	FUNC3(buffer, barker, barker_size);
	ret = FUNC6(i2400mu->usb_dev, pipe, buffer, barker_size,
			   &actual_len, HZ);
	if (ret < 0) {
		if (ret != -EINVAL)
			FUNC0(dev, "E: barker error: %d\n", ret);
	} else if (actual_len != barker_size) {
		FUNC0(dev, "E: only %d bytes transmitted\n", actual_len);
		ret = -EIO;
	}
	FUNC1(buffer);
error_kzalloc:
	if (do_autopm)
		FUNC5(i2400mu->usb_iface);
	return ret;
}