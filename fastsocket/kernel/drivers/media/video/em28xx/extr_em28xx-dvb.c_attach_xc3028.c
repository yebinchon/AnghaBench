
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct xc2028_config {int i2c_addr; int * i2c_adap; } ;
struct em28xx {int name; TYPE_1__* dvb; int i2c_adap; } ;
struct dvb_frontend {int dummy; } ;
typedef int cfg ;
struct TYPE_2__ {int * frontend; } ;


 int EINVAL ;
 struct dvb_frontend* dvb_attach (int ,int *,struct xc2028_config*) ;
 int dvb_frontend_detach (int *) ;
 int em28xx_errdev (char*) ;
 int em28xx_info (char*,int ) ;
 int memset (struct xc2028_config*,int ,int) ;
 int xc2028_attach ;

__attribute__((used)) static int attach_xc3028(u8 addr, struct em28xx *dev)
{
 struct dvb_frontend *fe;
 struct xc2028_config cfg;

 memset(&cfg, 0, sizeof(cfg));
 cfg.i2c_adap = &dev->i2c_adap;
 cfg.i2c_addr = addr;

 if (!dev->dvb->frontend) {
  em28xx_errdev("/2: dvb frontend not attached. "
    "Can't attach xc3028\n");
  return -EINVAL;
 }

 fe = dvb_attach(xc2028_attach, dev->dvb->frontend, &cfg);
 if (!fe) {
  em28xx_errdev("/2: xc3028 attach failed\n");
  dvb_frontend_detach(dev->dvb->frontend);
  dev->dvb->frontend = ((void*)0);
  return -EINVAL;
 }

 em28xx_info("%s/2: xc3028 attached\n", dev->name);

 return 0;
}
