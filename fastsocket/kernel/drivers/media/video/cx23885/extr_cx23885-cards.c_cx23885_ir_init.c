
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_ir_parameters {int enable; int shutdown; int invert_level; } ;
struct v4l2_subdev_io_pin_config {int const strength; int value; int const function; int const pin; int const flags; } ;
struct cx23885_dev {int board; int sd_cx25840; int * sd_ir; } ;


 size_t ARRAY_SIZE (struct v4l2_subdev_io_pin_config*) ;
 int CX23885_HW_888_IR ;
 int CX23885_HW_AV_CORE ;





 int ENODEV ;


 int core ;
 void* cx23885_find_hw (struct cx23885_dev*,int ) ;
 int cx23888_ir_probe (struct cx23885_dev*) ;
 int enable_885_ir ;
 int ir ;
 int request_module (char*) ;
 int s_io_pin_config ;
 int tx_g_parameters ;
 int tx_s_parameters ;
 int v4l2_subdev_call (int ,int ,int ,...) ;

int cx23885_ir_init(struct cx23885_dev *dev)
{
 static struct v4l2_subdev_io_pin_config ir_rxtx_pin_cfg[] = {
  {
   .flags = 129,
   .pin = 132,
   .function = 134,
   .value = 0,
   .strength = 130,
  }, {
   .flags = 128,
   .pin = 131,
   .function = 133,
   .value = 0,
   .strength = 130,
  }
 };
 const size_t ir_rxtx_pin_cfg_count = ARRAY_SIZE(ir_rxtx_pin_cfg);

 static struct v4l2_subdev_io_pin_config ir_rx_pin_cfg[] = {
  {
   .flags = 129,
   .pin = 132,
   .function = 134,
   .value = 0,
   .strength = 130,
  }
 };
 const size_t ir_rx_pin_cfg_count = ARRAY_SIZE(ir_rx_pin_cfg);

 struct v4l2_subdev_ir_parameters params;
 int ret = 0;
 switch (dev->board) {
 case 139:
 case 138:
 case 137:
 case 147:
 case 140:
 case 143:
 case 142:
 case 144:
 case 146:

  break;
 case 136:
 case 141:
  ret = cx23888_ir_probe(dev);
  if (ret)
   break;
  dev->sd_ir = cx23885_find_hw(dev, CX23885_HW_888_IR);
  v4l2_subdev_call(dev->sd_cx25840, core, s_io_pin_config,
     ir_rxtx_pin_cfg_count, ir_rxtx_pin_cfg);




  v4l2_subdev_call(dev->sd_ir, ir, tx_g_parameters, &params);
  params.enable = 0;
  params.shutdown = 0;
  params.invert_level = 1;
  v4l2_subdev_call(dev->sd_ir, ir, tx_s_parameters, &params);
  params.shutdown = 1;
  v4l2_subdev_call(dev->sd_ir, ir, tx_s_parameters, &params);
  break;
 case 135:
  if (!enable_885_ir)
   break;
  dev->sd_ir = cx23885_find_hw(dev, CX23885_HW_AV_CORE);
  if (dev->sd_ir == ((void*)0)) {
   ret = -ENODEV;
   break;
  }
  v4l2_subdev_call(dev->sd_cx25840, core, s_io_pin_config,
     ir_rx_pin_cfg_count, ir_rx_pin_cfg);
  break;
 case 145:
  if (!enable_885_ir)
   break;
  dev->sd_ir = cx23885_find_hw(dev, CX23885_HW_AV_CORE);
  if (dev->sd_ir == ((void*)0)) {
   ret = -ENODEV;
   break;
  }
  v4l2_subdev_call(dev->sd_cx25840, core, s_io_pin_config,
     ir_rxtx_pin_cfg_count, ir_rxtx_pin_cfg);
  break;
 case 148:
  request_module("ir-kbd-i2c");
  break;
 }

 return ret;
}
