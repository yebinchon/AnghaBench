#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_6__ {int idProduct; } ;
struct usb_device {TYPE_1__ descriptor; int /*<<< orphan*/  dev; } ;
struct firmware {int size; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {int /*<<< orphan*/ * i2c_algo; TYPE_2__* adapter; } ;
struct TYPE_9__ {void* rc_key_map_size; void* rc_key_map; } ;
struct TYPE_8__ {void* rc_key_map_size; void* rc_key_map; } ;
struct TYPE_7__ {int /*<<< orphan*/ * tuner_attach; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  DW210X_READ_MSG ; 
 int /*<<< orphan*/  DW210X_WRITE_MSG ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  USB_PID_CINERGY_S 133 
#define  USB_PID_DW2102 132 
#define  USB_PID_DW2104 131 
#define  USB_PID_DW3101 130 
#define  USB_PID_PROF_1100 129 
#define  USB_PID_TEVII_S650 128 
 int /*<<< orphan*/  dw2102_earda_i2c_algo ; 
 int /*<<< orphan*/  dw2102_i2c_algo ; 
 TYPE_5__ dw2102_properties ; 
 int /*<<< orphan*/  dw2102_tuner_attach ; 
 TYPE_4__ dw2104_properties ; 
 int FUNC1 (struct usb_device*,int,int,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  err_str ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 void* rc_map_tbs_table ; 
 void* rc_map_tevii_table ; 
 int FUNC8 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__ s6x0_properties ; 

__attribute__((used)) static int FUNC9(struct usb_device *dev,
			const struct firmware *frmwr)
{
	u8 *b, *p;
	int ret = 0, i;
	u8 reset;
	u8 reset16[] = {0, 0, 0, 0, 0, 0, 0};
	const struct firmware *fw;
	const char *fw_2101 = "dvb-usb-dw2101.fw";

	switch (dev->descriptor.idProduct) {
	case 0x2101:
		ret = FUNC8(&fw, fw_2101, &dev->dev);
		if (ret != 0) {
			FUNC2(err_str, fw_2101);
			return ret;
		}
		break;
	default:
		fw = frmwr;
		break;
	}
	FUNC3("start downloading DW210X firmware");
	p = FUNC5(fw->size, GFP_KERNEL);
	reset = 1;
	/*stop the CPU*/
	FUNC1(dev, 0xa0, 0x7f92, 0, &reset, 1, DW210X_WRITE_MSG);
	FUNC1(dev, 0xa0, 0xe600, 0, &reset, 1, DW210X_WRITE_MSG);

	if (p != NULL) {
		FUNC6(p, fw->data, fw->size);
		for (i = 0; i < fw->size; i += 0x40) {
			b = (u8 *) p + i;
			if (FUNC1(dev, 0xa0, i, 0, b , 0x40,
					DW210X_WRITE_MSG) != 0x40) {
				FUNC2("error while transferring firmware");
				ret = -EINVAL;
				break;
			}
		}
		/* restart the CPU */
		reset = 0;
		if (ret || FUNC1(dev, 0xa0, 0x7f92, 0, &reset, 1,
					DW210X_WRITE_MSG) != 1) {
			FUNC2("could not restart the USB controller CPU.");
			ret = -EINVAL;
		}
		if (ret || FUNC1(dev, 0xa0, 0xe600, 0, &reset, 1,
					DW210X_WRITE_MSG) != 1) {
			FUNC2("could not restart the USB controller CPU.");
			ret = -EINVAL;
		}
		/* init registers */
		switch (dev->descriptor.idProduct) {
		case USB_PID_PROF_1100:
			s6x0_properties.rc_key_map = rc_map_tbs_table;
			s6x0_properties.rc_key_map_size =
					FUNC0(rc_map_tbs_table);
			break;
		case USB_PID_TEVII_S650:
			dw2104_properties.rc_key_map = rc_map_tevii_table;
			dw2104_properties.rc_key_map_size =
					FUNC0(rc_map_tevii_table);
		case USB_PID_DW2104:
			reset = 1;
			FUNC1(dev, 0xc4, 0x0000, 0, &reset, 1,
					DW210X_WRITE_MSG);
			/* break omitted intentionally */
		case USB_PID_DW3101:
			reset = 0;
			FUNC1(dev, 0xbf, 0x0040, 0, &reset, 0,
					DW210X_WRITE_MSG);
			break;
		case USB_PID_CINERGY_S:
		case USB_PID_DW2102:
			FUNC1(dev, 0xbf, 0x0040, 0, &reset, 0,
					DW210X_WRITE_MSG);
			FUNC1(dev, 0xb9, 0x0000, 0, &reset16[0], 2,
					DW210X_READ_MSG);
			/* check STV0299 frontend  */
			FUNC1(dev, 0xb5, 0, 0, &reset16[0], 2,
					DW210X_READ_MSG);
			if ((reset16[0] == 0xa1) || (reset16[0] == 0x80)) {
				dw2102_properties.i2c_algo = &dw2102_i2c_algo;
				dw2102_properties.adapter->tuner_attach = &dw2102_tuner_attach;
				break;
			} else {
				/* check STV0288 frontend  */
				reset16[0] = 0xd0;
				reset16[1] = 1;
				reset16[2] = 0;
				FUNC1(dev, 0xc2, 0, 0, &reset16[0], 3,
						DW210X_WRITE_MSG);
				FUNC1(dev, 0xc3, 0xd1, 0, &reset16[0], 3,
						DW210X_READ_MSG);
				if (reset16[2] == 0x11) {
					dw2102_properties.i2c_algo = &dw2102_earda_i2c_algo;
					break;
				}
			}
		case 0x2101:
			FUNC1(dev, 0xbc, 0x0030, 0, &reset16[0], 2,
					DW210X_READ_MSG);
			FUNC1(dev, 0xba, 0x0000, 0, &reset16[0], 7,
					DW210X_READ_MSG);
			FUNC1(dev, 0xba, 0x0000, 0, &reset16[0], 7,
					DW210X_READ_MSG);
			FUNC1(dev, 0xb9, 0x0000, 0, &reset16[0], 2,
					DW210X_READ_MSG);
			break;
		}

		FUNC7(100);
		FUNC4(p);
	}
	return ret;
}