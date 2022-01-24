#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_device {TYPE_2__** ep_out; int /*<<< orphan*/  dev; } ;
struct firmware {size_t size; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {size_t wMaxPacketSize; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  firmware_name ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int FUNC5 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct usb_device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC8(struct usb_device *udev)
{
	int ret = 0, actual_length;
	const struct firmware *fw = NULL;
	void *fwbuf = NULL;
	size_t fwlength = 0, offset;
	size_t max_packet_size;

	ret = FUNC5(&fw, firmware_name, &udev->dev);
	if (ret) {
		FUNC2("download err : %d", ret);
		return ret;
	}

	fwlength = fw->size;

	fwbuf = FUNC1(fw->data, fwlength, GFP_KERNEL);
	if (!fwbuf) {
		ret = -ENOMEM;
		goto out;
	}

	max_packet_size = udev->ep_out[0x1]->desc.wMaxPacketSize;
	FUNC2("\t\t download size : %d", (int)max_packet_size);

	for (offset = 0; offset < fwlength; offset += max_packet_size) {
		actual_length = 0;
		ret = FUNC6(udev,
				FUNC7(udev, 0x01), /* ep 1 */
				fwbuf + offset,
				FUNC3(max_packet_size, fwlength - offset),
				&actual_length,
				HZ * 10);
		if (ret)
			break;
	}
	FUNC0(fwbuf);
out:
	FUNC4(fw);
	return ret;
}