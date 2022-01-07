
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned char u32 ;
struct saa7134_dev {int dummy; } ;
struct IR_i2c {TYPE_2__* c; } ;
struct TYPE_5__ {TYPE_1__* adapter; } ;
struct TYPE_4__ {struct saa7134_dev* algo_data; } ;


 int EIO ;
 int SAA7134_GPIO_GPMODE3 ;
 int SAA7134_GPIO_GPRESCAN ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int i2c_master_recv (TYPE_2__*,unsigned char*,int) ;
 int i2c_master_send (TYPE_2__*,unsigned char*,int) ;
 int i2cdprintk (char*,...) ;
 int msleep (int) ;
 int saa_clearb (int ,int ) ;
 int saa_readl (int) ;
 int saa_setb (int ,int ) ;

__attribute__((used)) static int get_key_flydvb_trio(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
 int gpio;
 int attempt = 0;
 unsigned char b;


 struct saa7134_dev *dev = ir->c->adapter->algo_data;

 if (dev == ((void*)0)) {
  i2cdprintk("get_key_flydvb_trio: "
      "ir->c->adapter->algo_data is NULL!\n");
  return -EIO;
 }


 saa_clearb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
 saa_setb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);

 gpio = saa_readl(SAA7134_GPIO_GPSTATUS0 >> 2);

 if (0x40000 & ~gpio)
  return 0;


 if (b == 0xFF)
  return 0;



 b = 0;

 while (1 != i2c_master_send(ir->c, &b, 1)) {
  if ((attempt++) < 10) {




   msleep(10);
   continue;
  }
  i2cdprintk("send wake up byte to pic16C505 (IR chip)"
      "failed %dx\n", attempt);
  return -EIO;
 }
 if (1 != i2c_master_recv(ir->c, &b, 1)) {
  i2cdprintk("read error\n");
  return -EIO;
 }

 *ir_key = b;
 *ir_raw = b;
 return 1;
}
