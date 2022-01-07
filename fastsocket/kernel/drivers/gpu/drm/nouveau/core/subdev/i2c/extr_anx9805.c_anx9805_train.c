
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nouveau_i2c_port {int dummy; } ;
struct anx9805_i2c_port {int addr; } ;
struct TYPE_2__ {scalar_t__ parent; } ;


 int EIO ;
 int ETIMEDOUT ;
 int mdelay (int) ;
 int nv_error (struct nouveau_i2c_port*,char*,...) ;
 TYPE_1__* nv_object (struct anx9805_i2c_port*) ;
 int nv_rdi2cr (struct nouveau_i2c_port*,int ,int) ;
 int nv_wri2cr (struct nouveau_i2c_port*,int ,int,int) ;

__attribute__((used)) static int
anx9805_train(struct nouveau_i2c_port *port, int link_nr, int link_bw, bool enh)
{
 struct anx9805_i2c_port *chan = (void *)port;
 struct nouveau_i2c_port *mast = (void *)nv_object(chan)->parent;
 u8 tmp, i;

 nv_wri2cr(mast, chan->addr, 0xa0, link_bw);
 nv_wri2cr(mast, chan->addr, 0xa1, link_nr | (enh ? 0x80 : 0x00));
 nv_wri2cr(mast, chan->addr, 0xa2, 0x01);
 nv_wri2cr(mast, chan->addr, 0xa8, 0x01);

 i = 0;
 while ((tmp = nv_rdi2cr(mast, chan->addr, 0xa8)) & 0x01) {
  mdelay(5);
  if (i++ == 100) {
   nv_error(port, "link training timed out\n");
   return -ETIMEDOUT;
  }
 }

 if (tmp & 0x70) {
  nv_error(port, "link training failed: 0x%02x\n", tmp);
  return -EIO;
 }

 return 1;
}
