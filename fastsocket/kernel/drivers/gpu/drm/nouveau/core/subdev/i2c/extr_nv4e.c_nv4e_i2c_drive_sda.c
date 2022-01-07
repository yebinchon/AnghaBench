
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv4e_i2c_priv {int dummy; } ;
struct nv4e_i2c_port {int addr; } ;
struct nouveau_i2c_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ engine; } ;


 int nv_mask (struct nv4e_i2c_priv*,int ,int,int) ;
 TYPE_1__* nv_object (struct nouveau_i2c_port*) ;

__attribute__((used)) static void
nv4e_i2c_drive_sda(struct nouveau_i2c_port *base, int state)
{
 struct nv4e_i2c_priv *priv = (void *)nv_object(base)->engine;
 struct nv4e_i2c_port *port = (void *)base;
 nv_mask(priv, port->addr, 0x1f, state ? 0x11 : 0x01);
}
