
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7134_dev {int dummy; } ;


 int SAA7134_GPIO_GPMODE0 ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int SAA7134_VIDEO_PORT_CTRL6 ;
 int dprintk (char*,int,...) ;
 int saa_andorb (int ,int,int) ;
 int saa_andorl (int,int,int) ;

void saa7134_set_gpio(struct saa7134_dev *dev, int bit_no, int value)
{
 u32 index, bitval;

 index = 1 << bit_no;
 switch (value) {
 case 0:
 case 1: dprintk("setting GPIO%d to static %d\n", bit_no, value);

  if (index & 0x00c00000)
   saa_andorb(SAA7134_VIDEO_PORT_CTRL6, 0x0f, 0x00);
  if (value)
   bitval = index;
  else
   bitval = 0;
  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, index, index);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, index, bitval);
  break;
 case 3:
  dprintk("setting GPIO%d to tristate\n", bit_no);
  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, index, 0);
  break;
 }
}
