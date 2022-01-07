
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int boardnr; } ;
struct cx8802_driver {struct cx88_core* core; } ;



 int ENODEV ;

__attribute__((used)) static int cx8802_blackbird_advise_release(struct cx8802_driver *drv)
{
 struct cx88_core *core = drv->core;
 int err = 0;

 switch (core->boardnr) {
 case 128:

  break;
 default:
  err = -ENODEV;
 }
 return err;
}
