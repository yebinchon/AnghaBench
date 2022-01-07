
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct saa7134_dev {int dummy; } ;
struct IR_i2c {TYPE_2__* c; } ;
struct TYPE_4__ {int addr; TYPE_1__* adapter; } ;
struct TYPE_3__ {struct saa7134_dev* algo_data; } ;


 int EIO ;
 int SAA7134_GPIO_GPMODE3 ;
 int SAA7134_GPIO_GPRESCAN ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int i2c_master_recv (TYPE_2__*,unsigned char*,int) ;
 int i2cdprintk (char*) ;
 int saa_clearb (int ,int ) ;
 int saa_readl (int) ;
 int saa_setb (int ,int ) ;

__attribute__((used)) static int get_key_beholdm6xx(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
 unsigned char data[12];
 u32 gpio;

 struct saa7134_dev *dev = ir->c->adapter->algo_data;


 saa_clearb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
 saa_setb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);

 gpio = saa_readl(SAA7134_GPIO_GPSTATUS0 >> 2);

 if (0x400000 & ~gpio)
  return 0;

 ir->c->addr = 0x5a >> 1;

 if (12 != i2c_master_recv(ir->c, data, 12)) {
  i2cdprintk("read error\n");
  return -EIO;
 }

 if (data[9] != (unsigned char)(~data[8]))
  return 0;

 *ir_raw = ((data[10] << 16) | (data[11] << 8) | (data[9] << 0));
 *ir_key = *ir_raw;

 return 1;
}
