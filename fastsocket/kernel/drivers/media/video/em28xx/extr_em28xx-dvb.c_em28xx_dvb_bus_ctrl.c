
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx {int dummy; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_2__ {struct em28xx* priv; } ;


 int EM28XX_DIGITAL_MODE ;
 int EM28XX_SUSPEND ;
 int em28xx_set_mode (struct em28xx*,int ) ;

__attribute__((used)) static int em28xx_dvb_bus_ctrl(struct dvb_frontend *fe, int acquire)
{
 struct em28xx *dev = fe->dvb->priv;

 if (acquire)
  return em28xx_set_mode(dev, EM28XX_DIGITAL_MODE);
 else
  return em28xx_set_mode(dev, EM28XX_SUSPEND);
}
