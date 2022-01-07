
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {int board; } ;
 int GP0_IO ;
 int GPIO_0 ;
 int GPIO_1 ;
 int GPIO_13 ;
 int GPIO_14 ;
 int GPIO_15 ;
 int GPIO_2 ;
 int GPIO_5 ;
 int GPIO_6 ;
 int GPIO_9 ;
 int GPIO_ISM ;
 int MC417_CTL ;
 int MC417_OEN ;
 int MC417_RWD ;
 int cx23885_gpio_clear (struct cx23885_dev*,int) ;
 int cx23885_gpio_enable (struct cx23885_dev*,int,int) ;
 int cx23885_gpio_set (struct cx23885_dev*,int) ;
 int cx_clear (int ,int) ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;
 int mc417_gpio_clear (struct cx23885_dev*,int) ;
 int mc417_gpio_enable (struct cx23885_dev*,int,int) ;
 int mc417_gpio_set (struct cx23885_dev*,int) ;
 int mdelay (int) ;
 int msleep (int) ;

void cx23885_gpio_setup(struct cx23885_dev *dev)
{
 switch (dev->board) {
 case 145:

  cx_set(GP0_IO, 0x00010001);
  break;
 case 139:




  cx_set(GP0_IO, 0x00050000);
  cx_clear(GP0_IO, 0x00000005);
  msleep(5);


  cx_set(GP0_IO, 0x00050005);
  break;
 case 138:


  cx_set(GP0_IO, 0x00050005);
  break;
 case 136:
  mc417_gpio_enable(dev, GPIO_15 | GPIO_14, 1);


  mc417_gpio_clear(dev, GPIO_15 | GPIO_14);
  mdelay(100);


  mc417_gpio_set(dev, GPIO_15 | GPIO_14);
  mdelay(100);


  cx23885_gpio_enable(dev, GPIO_2, 1);
  cx23885_gpio_set(dev, GPIO_2);
  mdelay(20);
  cx23885_gpio_clear(dev, GPIO_2);
  mdelay(20);
  cx23885_gpio_set(dev, GPIO_2);
  mdelay(20);
  break;
 case 147:




  cx_set(GP0_IO, 0x00050000);
  mdelay(20);
  cx_clear(GP0_IO, 0x00000005);
  mdelay(20);
  cx_set(GP0_IO, 0x00050005);
  break;
 case 137:
  cx_set(GP0_IO, 0x00050000);
  mdelay(20);
  cx_clear(GP0_IO, 0x00000005);
  mdelay(20);
  cx_set(GP0_IO, 0x00050005);
  break;
 case 140:





  cx_set(GP0_IO, 0x00050000);
  mdelay(20);
  cx_clear(GP0_IO, 0x00000005);
  mdelay(20);
  cx_set(GP0_IO, 0x00050005);
  break;
 case 150:






  cx_set(GP0_IO, 0x000f0000);
  mdelay(20);
  cx_clear(GP0_IO, 0x0000000f);
  mdelay(20);
  cx_set(GP0_IO, 0x000f000f);
  break;
 case 149:






  cx_set(GP0_IO, 0x000f0000);
  mdelay(20);
  cx_clear(GP0_IO, 0x0000000f);
  mdelay(20);
  cx_set(GP0_IO, 0x000f000f);
  break;
 case 134:
 case 152:
 case 151:
 case 133:






  cx_set(GP0_IO, 0x00040000);
  mdelay(20);
  cx_clear(GP0_IO, 0x00000004);
  mdelay(20);
  cx_set(GP0_IO, 0x00040004);
  break;
 case 128:
  cx_write(MC417_CTL, 0x00000036);
  cx_write(MC417_OEN, 0x00001000);
  cx_set(MC417_RWD, 0x00000002);
  mdelay(200);
  cx_clear(MC417_RWD, 0x00000800);
  mdelay(200);
  cx_set(MC417_RWD, 0x00000800);
  mdelay(200);
  break;
 case 129:
  cx_set(GP0_IO, 0x00040000);

  cx_clear(GP0_IO, 0x00030004);
  mdelay(100);
  cx_set(GP0_IO, 0x00040004);
  cx_write(MC417_CTL, 0x00000037);

  cx_write(MC417_OEN, 0x00001000);

  cx_write(MC417_RWD, 0x0000c300);

  cx_write(GPIO_ISM, 0x00000000);
  break;
 case 143:
 case 142:
 case 144:
 case 146:





  cx23885_gpio_enable(dev, GPIO_9 | GPIO_6 | GPIO_5, 1);
  cx23885_gpio_set(dev, GPIO_9 | GPIO_6 | GPIO_5);
  cx23885_gpio_clear(dev, GPIO_9);
  mdelay(20);
  cx23885_gpio_set(dev, GPIO_9);
  break;
 case 131:
 case 132:



  cx23885_gpio_enable(dev, GPIO_0 | GPIO_1 | GPIO_2, 1);
  cx23885_gpio_clear(dev, GPIO_1 | GPIO_2);
  mdelay(100);
  cx23885_gpio_set(dev, GPIO_0 | GPIO_1 | GPIO_2);
  mdelay(100);
  break;
 case 130:


  cx23885_gpio_enable(dev, GPIO_0 | GPIO_1, 1);
  cx23885_gpio_clear(dev, GPIO_0 | GPIO_1);
  mdelay(100);
  cx23885_gpio_set(dev, GPIO_0 | GPIO_1);
  mdelay(100);
  break;
 case 135:
 case 141:
  mc417_gpio_enable(dev, GPIO_14 | GPIO_13, 1);


  mc417_gpio_clear(dev, GPIO_14 | GPIO_13);
  mdelay(100);


  mc417_gpio_set(dev, GPIO_14);
  mdelay(100);



  break;
 case 148:
  cx_set(GP0_IO, 0x00010001);
  break;
 }
}
