
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_extdev_func {int addr; } ;
struct nouveau_therm_priv {scalar_t__ ic; } ;
struct nouveau_therm {int dummy; } ;
struct nouveau_i2c {int (* identify ) (struct nouveau_i2c*,int ,char*,struct i2c_board_info*,int ) ;} ;
struct nouveau_bios {int dummy; } ;
struct i2c_board_info {int member_0; } ;


 int I2C_BOARD_INFO (char*,int) ;
 int NVBIOS_EXTDEV_ADT7473 ;
 int NVBIOS_EXTDEV_LM89 ;
 int NV_I2C_DEFAULT (int ) ;
 struct nouveau_bios* nouveau_bios (struct nouveau_therm*) ;
 struct nouveau_i2c* nouveau_i2c (struct nouveau_therm*) ;
 struct i2c_board_info* nv_board_infos ;
 int nvbios_extdev_find (struct nouveau_bios*,int ,struct nvbios_extdev_func*) ;
 int probe_monitoring_device ;
 int stub1 (struct nouveau_i2c*,int ,char*,struct i2c_board_info*,int ) ;
 int stub2 (struct nouveau_i2c*,int ,char*,struct i2c_board_info*,int ) ;
 int stub3 (struct nouveau_i2c*,int ,char*,struct i2c_board_info*,int ) ;

void
nouveau_therm_ic_ctor(struct nouveau_therm *therm)
{
 struct nouveau_therm_priv *priv = (void *)therm;
 struct nouveau_bios *bios = nouveau_bios(therm);
 struct nouveau_i2c *i2c = nouveau_i2c(therm);
 struct nvbios_extdev_func extdev_entry;

 if (!nvbios_extdev_find(bios, NVBIOS_EXTDEV_LM89, &extdev_entry)) {
  struct i2c_board_info board[] = {
   { I2C_BOARD_INFO("lm90", extdev_entry.addr >> 1) },
   { }
  };

  i2c->identify(i2c, NV_I2C_DEFAULT(0), "monitoring device",
      board, probe_monitoring_device);
  if (priv->ic)
   return;
 }

 if (!nvbios_extdev_find(bios, NVBIOS_EXTDEV_ADT7473, &extdev_entry)) {
  struct i2c_board_info board[] = {
   { I2C_BOARD_INFO("adt7473", extdev_entry.addr >> 1) },
   { }
  };

  i2c->identify(i2c, NV_I2C_DEFAULT(0), "monitoring device",
      board, probe_monitoring_device);
  if (priv->ic)
   return;
 }




 i2c->identify(i2c, NV_I2C_DEFAULT(0), "monitoring device",
        nv_board_infos, probe_monitoring_device);
}
