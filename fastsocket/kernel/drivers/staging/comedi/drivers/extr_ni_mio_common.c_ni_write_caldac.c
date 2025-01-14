
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_6__ {int* caldac; } ;
struct TYPE_5__ {int n_chans; unsigned int (* packbits ) (int,int,unsigned int*) ;} ;
struct TYPE_4__ {int* caldacs; } ;


 unsigned int SerDacLd (int) ;
 int Serial_Command ;
 TYPE_3__ boardtype ;
 int caldac_none ;
 TYPE_2__* caldacs ;
 TYPE_1__* devpriv ;
 int ni_writeb (unsigned int,int ) ;
 unsigned int stub1 (int,int,unsigned int*) ;
 int udelay (int) ;

__attribute__((used)) static void ni_write_caldac(struct comedi_device *dev, int addr, int val)
{
 unsigned int loadbit = 0, bits = 0, bit, bitstring = 0;
 int i;
 int type;


 if (devpriv->caldacs[addr] == val)
  return;
 devpriv->caldacs[addr] = val;

 for (i = 0; i < 3; i++) {
  type = boardtype.caldac[i];
  if (type == caldac_none)
   break;
  if (addr < caldacs[type].n_chans) {
   bits = caldacs[type].packbits(addr, val, &bitstring);
   loadbit = SerDacLd(i);

   break;
  }
  addr -= caldacs[type].n_chans;
 }

 for (bit = 1 << (bits - 1); bit; bit >>= 1) {
  ni_writeb(((bit & bitstring) ? 0x02 : 0), Serial_Command);
  udelay(1);
  ni_writeb(1 | ((bit & bitstring) ? 0x02 : 0), Serial_Command);
  udelay(1);
 }
 ni_writeb(loadbit, Serial_Command);
 udelay(1);
 ni_writeb(0, Serial_Command);
}
