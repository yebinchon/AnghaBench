
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nouveau_oclass {scalar_t__ handle; } ;
typedef void nouveau_object ;
struct nouveau_i2c {struct nouveau_i2c* (* find ) (struct nouveau_i2c*,int ) ;int ports; int identify; int find_type; } ;
struct nouveau_bios {int dummy; } ;
struct dcb_output {int type; int i2c_index; int extdev; int location; } ;
struct dcb_i2c_entry {scalar_t__ type; } ;


 int ARRAY_SIZE (struct nouveau_oclass**) ;
 scalar_t__ DCB_I2C_UNUSED ;


 int EINVAL ;
 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ NV_I2C_TYPE_EXTAUX (int ) ;
 scalar_t__ NV_I2C_TYPE_EXTDDC (int ) ;
 int dcb_i2c_parse (struct nouveau_bios*,int,struct dcb_i2c_entry*) ;
 int dcb_outp_parse (struct nouveau_bios*,int,int *,int *,struct dcb_output*) ;
 struct nouveau_bios* nouveau_bios (void*) ;
 struct nouveau_oclass** nouveau_i2c_extdev_sclass ;
 struct nouveau_i2c* nouveau_i2c_find (struct nouveau_i2c*,int ) ;
 int nouveau_i2c_find_type ;
 int nouveau_i2c_identify ;
 int nouveau_object_ctor (void*,void*,struct nouveau_oclass*,struct dcb_i2c_entry*,int,void**) ;
 int nouveau_subdev_create (void*,void*,struct nouveau_oclass*,int ,char*,char*,struct nouveau_i2c**) ;
 void* nv_object (struct nouveau_i2c*) ;
 struct nouveau_i2c* stub1 (struct nouveau_i2c*,int ) ;

int
nouveau_i2c_create_(struct nouveau_object *parent,
      struct nouveau_object *engine,
      struct nouveau_oclass *oclass,
      struct nouveau_oclass *sclass,
      int length, void **pobject)
{
 struct nouveau_bios *bios = nouveau_bios(parent);
 struct nouveau_i2c *i2c;
 struct nouveau_object *object;
 struct dcb_i2c_entry info;
 int ret, i, j, index = -1;
 struct dcb_output outp;
 u8 ver, hdr;
 u32 data;

 ret = nouveau_subdev_create(parent, engine, oclass, 0,
        "I2C", "i2c", &i2c);
 *pobject = nv_object(i2c);
 if (ret)
  return ret;

 i2c->find = nouveau_i2c_find;
 i2c->find_type = nouveau_i2c_find_type;
 i2c->identify = nouveau_i2c_identify;
 INIT_LIST_HEAD(&i2c->ports);

 while (!dcb_i2c_parse(bios, ++index, &info)) {
  if (info.type == DCB_I2C_UNUSED)
   continue;

  oclass = sclass;
  do {
   ret = -EINVAL;
   if (oclass->handle == info.type) {
    ret = nouveau_object_ctor(*pobject, *pobject,
         oclass, &info,
         index, &object);
   }
  } while (ret && (++oclass)->handle);
 }





 index = ((index + 0x0f) / 0x10) * 0x10;
 i = -1;
 while ((data = dcb_outp_parse(bios, ++i, &ver, &hdr, &outp))) {
  if (!outp.location || !outp.extdev)
   continue;

  switch (outp.type) {
  case 128:
   info.type = NV_I2C_TYPE_EXTDDC(outp.extdev);
   break;
  case 129:
   info.type = NV_I2C_TYPE_EXTAUX(outp.extdev);
   break;
  default:
   continue;
  }

  ret = -ENODEV;
  j = -1;
  while (ret && ++j < ARRAY_SIZE(nouveau_i2c_extdev_sclass)) {
   parent = nv_object(i2c->find(i2c, outp.i2c_index));
   oclass = nouveau_i2c_extdev_sclass[j];
   do {
    if (oclass->handle != info.type)
     continue;
    ret = nouveau_object_ctor(parent, *pobject,
         oclass, ((void*)0),
         index++, &object);
   } while (ret && (++oclass)->handle);
  }
 }

 return 0;
}
