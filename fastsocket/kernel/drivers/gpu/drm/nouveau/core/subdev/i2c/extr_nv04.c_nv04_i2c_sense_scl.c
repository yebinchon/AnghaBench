
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv04_i2c_priv {int dummy; } ;
struct nv04_i2c_port {int sense; } ;
struct nouveau_i2c_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ engine; } ;


 TYPE_1__* nv_object (struct nouveau_i2c_port*) ;
 int nv_rdvgac (struct nv04_i2c_priv*,int ,int ) ;

__attribute__((used)) static int
nv04_i2c_sense_scl(struct nouveau_i2c_port *base)
{
 struct nv04_i2c_priv *priv = (void *)nv_object(base)->engine;
 struct nv04_i2c_port *port = (void *)base;
 return !!(nv_rdvgac(priv, 0, port->sense) & 0x04);
}
