
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int base; int mode; } ;
typedef TYPE_1__ imm_struct ;


 int CONNECT_EPP_MAYBE ;
 int EIO ;
 int ENODEV ;
 int IMM_EPP_32 ;
 int * IMM_MODE_STRING ;
 int imm_connect (TYPE_1__*,int ) ;
 int imm_disconnect (TYPE_1__*) ;
 int imm_out (TYPE_1__*,char*,int) ;
 int imm_reset_pulse (int) ;
 int imm_select (TYPE_1__*,int) ;
 int printk (char*,...) ;
 unsigned char r_str (int) ;
 int udelay (int) ;
 int w_ctr (int,int) ;

__attribute__((used)) static int device_check(imm_struct *dev)
{



 static char cmd[6] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
 int loop, old_mode, status, k, ppb = dev->base;
 unsigned char l;

 old_mode = dev->mode;
 for (loop = 0; loop < 8; loop++) {

  if ((ppb & 0x0007) == 0x0000)
   dev->mode = IMM_EPP_32;

       second_pass:
  imm_connect(dev, CONNECT_EPP_MAYBE);

  if (!imm_select(dev, loop)) {
   imm_disconnect(dev);
   continue;
  }
  printk("imm: Found device at ID %i, Attempting to use %s\n",
         loop, IMM_MODE_STRING[dev->mode]);


  status = 1;
  w_ctr(ppb, 0x0c);
  for (l = 0; (l < 3) && (status); l++)
   status = imm_out(dev, &cmd[l << 1], 2);

  if (!status) {
   imm_disconnect(dev);
   imm_connect(dev, CONNECT_EPP_MAYBE);
   imm_reset_pulse(dev->base);
   udelay(1000);
   imm_disconnect(dev);
   udelay(1000);
   if (dev->mode == IMM_EPP_32) {
    dev->mode = old_mode;
    goto second_pass;
   }
   printk("imm: Unable to establish communication\n");
   return -EIO;
  }
  w_ctr(ppb, 0x0c);

  k = 1000000;
  do {
   l = r_str(ppb);
   k--;
   udelay(1);
  } while (!(l & 0x80) && (k));

  l &= 0xb8;

  if (l != 0xb8) {
   imm_disconnect(dev);
   imm_connect(dev, CONNECT_EPP_MAYBE);
   imm_reset_pulse(dev->base);
   udelay(1000);
   imm_disconnect(dev);
   udelay(1000);
   if (dev->mode == IMM_EPP_32) {
    dev->mode = old_mode;
    goto second_pass;
   }
   printk
       ("imm: Unable to establish communication\n");
   return -EIO;
  }
  imm_disconnect(dev);
  printk
      ("imm: Communication established at 0x%x with ID %i using %s\n",
       ppb, loop, IMM_MODE_STRING[dev->mode]);
  imm_connect(dev, CONNECT_EPP_MAYBE);
  imm_reset_pulse(dev->base);
  udelay(1000);
  imm_disconnect(dev);
  udelay(1000);
  return 0;
 }
 printk("imm: No devices found\n");
 return -ENODEV;
}
