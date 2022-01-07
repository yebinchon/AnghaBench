
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned short base; } ;
typedef TYPE_1__ ppa_struct ;


 int CONNECT_NORMAL ;
 int EIO ;
 int device_check (TYPE_1__*) ;
 int ppa_connect (TYPE_1__*,int ) ;
 int ppa_disconnect (TYPE_1__*) ;
 int ppa_reset_pulse (unsigned short) ;
 int r_str (unsigned short) ;
 int udelay (int) ;
 int w_ctr (unsigned short,int) ;

__attribute__((used)) static int ppa_init(ppa_struct *dev)
{
 int retv;
 unsigned short ppb = dev->base;

 ppa_disconnect(dev);
 ppa_connect(dev, CONNECT_NORMAL);

 retv = 2;

 w_ctr(ppb, 0xe);
 if ((r_str(ppb) & 0x08) == 0x08)
  retv--;

 w_ctr(ppb, 0xc);
 if ((r_str(ppb) & 0x08) == 0x00)
  retv--;

 if (!retv)
  ppa_reset_pulse(ppb);
 udelay(1000);
 ppa_disconnect(dev);
 udelay(1000);

 if (retv)
  return -EIO;

 return device_check(dev);
}
