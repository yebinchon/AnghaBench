
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned short base; int mode; } ;
typedef TYPE_1__ imm_struct ;


 int DID_ERROR ;


 int imm_fail (TYPE_1__*,int ) ;
 int printk (char*) ;
 int r_str (unsigned short) ;
 int udelay (int) ;
 int w_ctr (unsigned short,int) ;
 int w_dtr (unsigned short,unsigned char) ;

__attribute__((used)) static int imm_negotiate(imm_struct * tmp)
{
 unsigned short base = tmp->base;
 unsigned char a, mode;

 switch (tmp->mode) {
 case 129:
  mode = 0x00;
  break;
 case 128:
  mode = 0x01;
  break;
 default:
  return 0;
 }

 w_ctr(base, 0x04);
 udelay(5);
 w_dtr(base, mode);
 udelay(100);
 w_ctr(base, 0x06);
 udelay(5);
 a = (r_str(base) & 0x20) ? 0 : 1;
 udelay(5);
 w_ctr(base, 0x07);
 udelay(5);
 w_ctr(base, 0x06);

 if (a) {
  printk
      ("IMM: IEEE1284 negotiate indicates no data available.\n");
  imm_fail(tmp, DID_ERROR);
 }
 return a;
}
