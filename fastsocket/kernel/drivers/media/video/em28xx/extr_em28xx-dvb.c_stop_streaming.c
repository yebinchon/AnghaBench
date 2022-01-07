
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct em28xx* priv; } ;
struct em28xx_dvb {TYPE_1__ adapter; } ;
struct em28xx {int dummy; } ;


 int EM28XX_SUSPEND ;
 int em28xx_set_mode (struct em28xx*,int ) ;
 int em28xx_uninit_isoc (struct em28xx*) ;

__attribute__((used)) static int stop_streaming(struct em28xx_dvb *dvb)
{
 struct em28xx *dev = dvb->adapter.priv;

 em28xx_uninit_isoc(dev);

 em28xx_set_mode(dev, EM28XX_SUSPEND);

 return 0;
}
