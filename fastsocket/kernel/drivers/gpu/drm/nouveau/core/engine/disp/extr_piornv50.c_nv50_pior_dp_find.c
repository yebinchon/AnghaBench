
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_i2c_port {int dummy; } ;
struct nouveau_i2c {struct nouveau_i2c_port* (* find_type ) (struct nouveau_i2c*,int ) ;} ;
struct nouveau_disp {int dummy; } ;
struct dcb_output {int extdev; } ;


 int NV_I2C_TYPE_EXTAUX (int ) ;
 struct nouveau_i2c* nouveau_i2c (struct nouveau_disp*) ;
 struct nouveau_i2c_port* stub1 (struct nouveau_i2c*,int ) ;

__attribute__((used)) static struct nouveau_i2c_port *
nv50_pior_dp_find(struct nouveau_disp *disp, struct dcb_output *outp)
{
 struct nouveau_i2c *i2c = nouveau_i2c(disp);
 return i2c->find_type(i2c, NV_I2C_TYPE_EXTAUX(outp->extdev));
}
