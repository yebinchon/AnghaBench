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
struct v4l2_subdev_ir_parameters {int enable; int shutdown; int invert_level; } ;
struct v4l2_subdev_io_pin_config {int /*<<< orphan*/  const strength; int /*<<< orphan*/  value; int /*<<< orphan*/  const function; int /*<<< orphan*/  const pin; int /*<<< orphan*/  const flags; } ;
struct cx23885_dev {int board; int /*<<< orphan*/  sd_cx25840; int /*<<< orphan*/ * sd_ir; } ;

/* Variables and functions */
 size_t FUNC0 (struct v4l2_subdev_io_pin_config*) ; 
#define  CX23885_BOARD_DVICO_FUSIONHDTV_DVB_T_DUAL_EXP 148 
#define  CX23885_BOARD_HAUPPAUGE_HVR1200 147 
#define  CX23885_BOARD_HAUPPAUGE_HVR1210 146 
#define  CX23885_BOARD_HAUPPAUGE_HVR1250 145 
#define  CX23885_BOARD_HAUPPAUGE_HVR1255 144 
#define  CX23885_BOARD_HAUPPAUGE_HVR1270 143 
#define  CX23885_BOARD_HAUPPAUGE_HVR1275 142 
#define  CX23885_BOARD_HAUPPAUGE_HVR1290 141 
#define  CX23885_BOARD_HAUPPAUGE_HVR1400 140 
#define  CX23885_BOARD_HAUPPAUGE_HVR1500 139 
#define  CX23885_BOARD_HAUPPAUGE_HVR1500Q 138 
#define  CX23885_BOARD_HAUPPAUGE_HVR1800 137 
#define  CX23885_BOARD_HAUPPAUGE_HVR1850 136 
#define  CX23885_BOARD_TEVII_S470 135 
 int /*<<< orphan*/  CX23885_HW_888_IR ; 
 int /*<<< orphan*/  CX23885_HW_AV_CORE ; 
#define  CX23885_PAD_IR_RX 134 
#define  CX23885_PAD_IR_TX 133 
#define  CX23885_PIN_IR_RX_GPIO19 132 
#define  CX23885_PIN_IR_TX_GPIO20 131 
#define  CX25840_PIN_DRIVE_MEDIUM 130 
 int ENODEV ; 
#define  V4L2_SUBDEV_IO_PIN_INPUT 129 
#define  V4L2_SUBDEV_IO_PIN_OUTPUT 128 
 int /*<<< orphan*/  core ; 
 void* FUNC1 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  enable_885_ir ; 
 int /*<<< orphan*/  ir ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  s_io_pin_config ; 
 int /*<<< orphan*/  tx_g_parameters ; 
 int /*<<< orphan*/  tx_s_parameters ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

int FUNC5(struct cx23885_dev *dev)
{
	static struct v4l2_subdev_io_pin_config ir_rxtx_pin_cfg[] = {
		{
			.flags	  = V4L2_SUBDEV_IO_PIN_INPUT,
			.pin	  = CX23885_PIN_IR_RX_GPIO19,
			.function = CX23885_PAD_IR_RX,
			.value	  = 0,
			.strength = CX25840_PIN_DRIVE_MEDIUM,
		}, {
			.flags	  = V4L2_SUBDEV_IO_PIN_OUTPUT,
			.pin	  = CX23885_PIN_IR_TX_GPIO20,
			.function = CX23885_PAD_IR_TX,
			.value	  = 0,
			.strength = CX25840_PIN_DRIVE_MEDIUM,
		}
	};
	const size_t ir_rxtx_pin_cfg_count = FUNC0(ir_rxtx_pin_cfg);

	static struct v4l2_subdev_io_pin_config ir_rx_pin_cfg[] = {
		{
			.flags	  = V4L2_SUBDEV_IO_PIN_INPUT,
			.pin	  = CX23885_PIN_IR_RX_GPIO19,
			.function = CX23885_PAD_IR_RX,
			.value	  = 0,
			.strength = CX25840_PIN_DRIVE_MEDIUM,
		}
	};
	const size_t ir_rx_pin_cfg_count = FUNC0(ir_rx_pin_cfg);

	struct v4l2_subdev_ir_parameters params;
	int ret = 0;
	switch (dev->board) {
	case CX23885_BOARD_HAUPPAUGE_HVR1500:
	case CX23885_BOARD_HAUPPAUGE_HVR1500Q:
	case CX23885_BOARD_HAUPPAUGE_HVR1800:
	case CX23885_BOARD_HAUPPAUGE_HVR1200:
	case CX23885_BOARD_HAUPPAUGE_HVR1400:
	case CX23885_BOARD_HAUPPAUGE_HVR1270:
	case CX23885_BOARD_HAUPPAUGE_HVR1275:
	case CX23885_BOARD_HAUPPAUGE_HVR1255:
	case CX23885_BOARD_HAUPPAUGE_HVR1210:
		/* FIXME: Implement me */
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR1850:
	case CX23885_BOARD_HAUPPAUGE_HVR1290:
		ret = FUNC2(dev);
		if (ret)
			break;
		dev->sd_ir = FUNC1(dev, CX23885_HW_888_IR);
		FUNC4(dev->sd_cx25840, core, s_io_pin_config,
				 ir_rxtx_pin_cfg_count, ir_rxtx_pin_cfg);
		/*
		 * For these boards we need to invert the Tx output via the
		 * IR controller to have the LED off while idle
		 */
		FUNC4(*dev->sd_ir, ir, tx_g_parameters, &params);
		params.enable = false;
		params.shutdown = false;
		params.invert_level = true;
		FUNC4(*dev->sd_ir, ir, tx_s_parameters, &params);
		params.shutdown = true;
		FUNC4(*dev->sd_ir, ir, tx_s_parameters, &params);
		break;
	case CX23885_BOARD_TEVII_S470:
		if (!enable_885_ir)
			break;
		dev->sd_ir = FUNC1(dev, CX23885_HW_AV_CORE);
		if (dev->sd_ir == NULL) {
			ret = -ENODEV;
			break;
		}
		FUNC4(dev->sd_cx25840, core, s_io_pin_config,
				 ir_rx_pin_cfg_count, ir_rx_pin_cfg);
		break;
	case CX23885_BOARD_HAUPPAUGE_HVR1250:
		if (!enable_885_ir)
			break;
		dev->sd_ir = FUNC1(dev, CX23885_HW_AV_CORE);
		if (dev->sd_ir == NULL) {
			ret = -ENODEV;
			break;
		}
		FUNC4(dev->sd_cx25840, core, s_io_pin_config,
				 ir_rxtx_pin_cfg_count, ir_rxtx_pin_cfg);
		break;
	case CX23885_BOARD_DVICO_FUSIONHDTV_DVB_T_DUAL_EXP:
		FUNC3("ir-kbd-i2c");
		break;
	}

	return ret;
}