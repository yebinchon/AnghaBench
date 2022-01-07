
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvbios_init {TYPE_1__* outp; int bios; } ;
struct nouveau_i2c_port {int dummy; } ;
struct nouveau_i2c {struct nouveau_i2c_port* (* find ) (struct nouveau_i2c*,int) ;struct nouveau_i2c_port* (* find_type ) (struct nouveau_i2c*,int) ;} ;
struct TYPE_2__ {int i2c_index; int extdev; scalar_t__ location; scalar_t__ i2c_upper_default; } ;


 int NV_I2C_DEFAULT (int) ;
 int NV_I2C_TYPE_EXTAUX (int ) ;
 int error (char*) ;
 struct nouveau_i2c* nouveau_i2c (int ) ;
 struct nouveau_i2c_port* stub1 (struct nouveau_i2c*,int) ;
 struct nouveau_i2c_port* stub2 (struct nouveau_i2c*,int) ;

__attribute__((used)) static struct nouveau_i2c_port *
init_i2c(struct nvbios_init *init, int index)
{
 struct nouveau_i2c *i2c = nouveau_i2c(init->bios);

 if (index == 0xff) {
  index = NV_I2C_DEFAULT(0);
  if (init->outp && init->outp->i2c_upper_default)
   index = NV_I2C_DEFAULT(1);
 } else
 if (index < 0) {
  if (!init->outp) {
   error("script needs output for i2c\n");
   return ((void*)0);
  }

  if (index == -2 && init->outp->location) {
   index = NV_I2C_TYPE_EXTAUX(init->outp->extdev);
   return i2c->find_type(i2c, index);
  }

  index = init->outp->i2c_index;
 }

 return i2c->find(i2c, index);
}
