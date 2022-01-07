
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv04_i2c_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_i2c_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,struct nv04_i2c_priv**) ;
 int nv04_i2c_sclass ;
 struct nouveau_object* nv_object (struct nv04_i2c_priv*) ;

__attribute__((used)) static int
nv04_i2c_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
       struct nouveau_oclass *oclass, void *data, u32 size,
       struct nouveau_object **pobject)
{
 struct nv04_i2c_priv *priv;
 int ret;

 ret = nouveau_i2c_create(parent, engine, oclass, nv04_i2c_sclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 return 0;
}
