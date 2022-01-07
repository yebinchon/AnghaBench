
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv50_i2c_priv {int dummy; } ;
struct nv50_i2c_port {int state; int addr; } ;
struct nouveau_i2c_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ engine; } ;


 TYPE_1__* nv_object (struct nouveau_i2c_port*) ;
 int nv_wr32 (struct nv50_i2c_priv*,int ,int) ;

void
nv50_i2c_drive_sda(struct nouveau_i2c_port *base, int state)
{
 struct nv50_i2c_priv *priv = (void *)nv_object(base)->engine;
 struct nv50_i2c_port *port = (void *)base;
 if (state) port->state |= 0x02;
 else port->state &= 0xfd;
 nv_wr32(priv, port->addr, port->state);
}
