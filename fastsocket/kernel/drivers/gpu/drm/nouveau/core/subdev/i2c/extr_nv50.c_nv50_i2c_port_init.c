
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_i2c_priv {int dummy; } ;
struct nv50_i2c_port {int base; int state; int addr; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int nouveau_i2c_port_init (int *) ;
 int nv_wr32 (struct nv50_i2c_priv*,int ,int ) ;

int
nv50_i2c_port_init(struct nouveau_object *object)
{
 struct nv50_i2c_priv *priv = (void *)object->engine;
 struct nv50_i2c_port *port = (void *)object;
 nv_wr32(priv, port->addr, port->state);
 return nouveau_i2c_port_init(&port->base);
}
