
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv50_i2c_priv {int dummy; } ;
struct nv50_i2c_port {int addr; } ;
struct nouveau_i2c_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ engine; } ;


 TYPE_1__* nv_object (struct nouveau_i2c_port*) ;
 int nv_rd32 (struct nv50_i2c_priv*,int ) ;

int
nv50_i2c_sense_scl(struct nouveau_i2c_port *base)
{
 struct nv50_i2c_priv *priv = (void *)nv_object(base)->engine;
 struct nv50_i2c_port *port = (void *)base;
 return !!(nv_rd32(priv, port->addr) & 0x00000001);
}
