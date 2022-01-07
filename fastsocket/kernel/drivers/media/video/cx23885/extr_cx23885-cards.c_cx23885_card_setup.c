
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct cx23885_tsport {int gen_ctrl_val; int ts_clk_en_val; int vld_misc_val; int hw_sop_ctrl_val; void* src_sel_val; } ;
struct cx23885_dev {int board; TYPE_2__* sd_cx25840; TYPE_1__* i2c_bus; int v4l2_dev; struct cx23885_tsport ts2; struct cx23885_tsport ts1; } ;
typedef int eeprom ;
struct TYPE_7__ {int addr; } ;
struct TYPE_6__ {int grp_id; } ;
struct TYPE_5__ {scalar_t__ i2c_rc; int i2c_adap; TYPE_4__ i2c_client; } ;
 int CX23885_HW_AV_CORE ;
 void* CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO ;
 int core ;
 int enable_885_ir ;
 int hauppauge_eeprom (struct cx23885_dev*,int*) ;
 int load_fw ;
 int netup_initialize (struct cx23885_dev*) ;
 int tveeprom_read (TYPE_4__*,int*,int) ;
 TYPE_2__* v4l2_i2c_new_subdev (int *,int *,char*,int,int *) ;
 int v4l2_subdev_call (TYPE_2__*,int ,int ) ;

void cx23885_card_setup(struct cx23885_dev *dev)
{
 struct cx23885_tsport *ts1 = &dev->ts1;
 struct cx23885_tsport *ts2 = &dev->ts2;

 static u8 eeprom[256];

 if (dev->i2c_bus[0].i2c_rc == 0) {
  dev->i2c_bus[0].i2c_client.addr = 0xa0 >> 1;
  tveeprom_read(&dev->i2c_bus[0].i2c_client,
         eeprom, sizeof(eeprom));
 }

 switch (dev->board) {
 case 147:
  if (dev->i2c_bus[0].i2c_rc == 0) {
   if (eeprom[0x80] != 0x84)
    hauppauge_eeprom(dev, eeprom+0xc0);
   else
    hauppauge_eeprom(dev, eeprom+0x80);
  }
  break;
 case 141:
 case 140:
 case 142:
  if (dev->i2c_bus[0].i2c_rc == 0)
   hauppauge_eeprom(dev, eeprom+0x80);
  break;
 case 138:
 case 137:
 case 149:
 case 139:
 case 145:
 case 144:
 case 146:
 case 148:
 case 136:
 case 143:
  if (dev->i2c_bus[0].i2c_rc == 0)
   hauppauge_eeprom(dev, eeprom+0xc0);
  break;
 }

 switch (dev->board) {
 case 152:
 case 151:
  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;

 case 153:
  ts1->gen_ctrl_val = 0xc;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 138:


  ts1->gen_ctrl_val = 0x10e;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;


  ts1->vld_misc_val = 0x2000;
  ts1->hw_sop_ctrl_val = (0x47 << 16 | 188 << 4 | 0xc);


  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 129:
  ts1->gen_ctrl_val = 0x4;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 128:
 case 154:
  ts1->gen_ctrl_val = 0x5;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 130:
  ts1->gen_ctrl_val = 0xc;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 132:
 case 133:
  ts1->gen_ctrl_val = 0x5;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 131:
  ts1->gen_ctrl_val = 0x5;
  ts1->ts_clk_en_val = 0x1;
  ts1->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
  break;
 case 147:
 case 141:
 case 140:
 case 137:
 case 149:
 case 139:
 case 142:
 case 135:
 case 156:
 case 145:
 case 144:
 case 146:
 case 148:
 case 136:
 case 155:
 case 143:
 case 150:
 default:
  ts2->gen_ctrl_val = 0xc;
  ts2->ts_clk_en_val = 0x1;
  ts2->src_sel_val = CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO;
 }




 switch (dev->board) {
 case 128:
 case 147:

  if (!enable_885_ir)
   break;
 case 138:
 case 137:
 case 139:
 case 135:
 case 156:
 case 130:
 case 155:
 case 136:
 case 132:
 case 133:
 case 143:
 case 134:
 case 150:
  dev->sd_cx25840 = v4l2_i2c_new_subdev(&dev->v4l2_dev,
    &dev->i2c_bus[2].i2c_adap,
    "cx25840", 0x88 >> 1, ((void*)0));
  if (dev->sd_cx25840) {
   dev->sd_cx25840->grp_id = CX23885_HW_AV_CORE;
   v4l2_subdev_call(dev->sd_cx25840, core, load_fw);
  }
  break;
 }


 switch (dev->board) {
 case 130:
  netup_initialize(dev);
  break;
 }
}
