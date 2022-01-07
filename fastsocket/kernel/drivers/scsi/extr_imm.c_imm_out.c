
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned short base; int mode; } ;
typedef TYPE_1__ imm_struct ;


 int DID_ERROR ;





 int ecp_sync (TYPE_1__*) ;
 int epp_reset (unsigned short) ;
 int imm_byte_out (unsigned short,char*,int) ;
 int imm_fail (TYPE_1__*,int ) ;
 int imm_wait (TYPE_1__*) ;
 int outsb (int ,char*,int) ;
 int outsl (int ,char*,int) ;
 int outsw (int ,char*,int) ;
 int printk (char*,...) ;
 int r_str (unsigned short) ;
 int w_ctr (unsigned short,int) ;

__attribute__((used)) static int imm_out(imm_struct *dev, char *buffer, int len)
{
 unsigned short ppb = dev->base;
 int r = imm_wait(dev);






 if ((r & 0x18) != 0x08) {
  imm_fail(dev, DID_ERROR);
  printk("IMM: returned SCSI status %2x\n", r);
  return 0;
 }
 switch (dev->mode) {
 case 131:
 case 132:
 case 130:
  epp_reset(ppb);
  w_ctr(ppb, 0x4);




  if (!(((long) buffer | len) & 0x03))
   outsl(ppb + 4, buffer, len >> 2);

  else
   outsb(ppb + 4, buffer, len);
  w_ctr(ppb, 0xc);
  r = !(r_str(ppb) & 0x01);
  w_ctr(ppb, 0xc);
  ecp_sync(dev);
  break;

 case 129:
 case 128:

  r = imm_byte_out(ppb, buffer, len);
  break;

 default:
  printk("IMM: bug in imm_out()\n");
  r = 0;
 }
 return r;
}
