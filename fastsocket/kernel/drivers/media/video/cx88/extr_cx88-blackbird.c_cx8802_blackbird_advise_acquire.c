
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int boardnr; } ;
struct cx8802_driver {struct cx88_core* core; } ;



 int ENODEV ;
 int MO_GP0_IO ;
 int cx_clear (int ,int) ;
 int cx_set (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int cx8802_blackbird_advise_acquire(struct cx8802_driver *drv)
{
 struct cx88_core *core = drv->core;
 int err = 0;

 switch (core->boardnr) {
 case 128:






  cx_set(MO_GP0_IO, 0x00000080);
  udelay(1000);
  cx_clear(MO_GP0_IO, 0x00000080);
  udelay(50);
  cx_set(MO_GP0_IO, 0x00000080);
  udelay(1000);

  cx_set(MO_GP0_IO, 0x00000004);
  udelay(1000);
  break;
 default:
  err = -ENODEV;
 }
 return err;
}
