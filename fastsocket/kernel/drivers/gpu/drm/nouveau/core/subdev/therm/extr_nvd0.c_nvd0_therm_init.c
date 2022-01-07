
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* fan; int base; } ;
struct nvd0_therm_priv {TYPE_3__ base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_8__ {int crystal; } ;
struct TYPE_5__ {scalar_t__ func; int line; } ;
struct TYPE_6__ {TYPE_1__ tach; } ;


 scalar_t__ DCB_GPIO_UNUSED ;
 int nouveau_therm_init (int *) ;
 TYPE_4__* nv_device (struct nvd0_therm_priv*) ;
 int nv_mask (struct nvd0_therm_priv*,int,int,int) ;
 int nv_wr32 (struct nvd0_therm_priv*,int,int) ;

__attribute__((used)) static int
nvd0_therm_init(struct nouveau_object *object)
{
 struct nvd0_therm_priv *priv = (void *)object;
 int ret;

 ret = nouveau_therm_init(&priv->base.base);
 if (ret)
  return ret;


 nv_mask(priv, 0x00e720, 0x00000003, 0x00000002);
 if (priv->base.fan->tach.func != DCB_GPIO_UNUSED) {
  nv_mask(priv, 0x00d79c, 0x000000ff, priv->base.fan->tach.line);
  nv_wr32(priv, 0x00e724, nv_device(priv)->crystal * 1000);
  nv_mask(priv, 0x00e720, 0x00000001, 0x00000001);
 }
 nv_mask(priv, 0x00e720, 0x00000002, 0x00000000);

 return 0;
}
