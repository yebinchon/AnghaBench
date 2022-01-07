
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct iforce_core_effect {scalar_t__* flags; int mod2_chunk; int mod1_chunk; } ;
struct iforce {struct iforce_core_effect* core_effects; } ;


 int FF_MOD1_IS_USED ;
 int FF_MOD2_IS_USED ;
 struct iforce* input_get_drvdata (struct input_dev*) ;
 int release_resource (int *) ;
 scalar_t__ test_bit (int ,scalar_t__*) ;

__attribute__((used)) static int iforce_erase_effect(struct input_dev *dev, int effect_id)
{
 struct iforce *iforce = input_get_drvdata(dev);
 struct iforce_core_effect *core_effect = &iforce->core_effects[effect_id];
 int err = 0;

 if (test_bit(FF_MOD1_IS_USED, core_effect->flags))
  err = release_resource(&core_effect->mod1_chunk);

 if (!err && test_bit(FF_MOD2_IS_USED, core_effect->flags))
  err = release_resource(&core_effect->mod2_chunk);


 core_effect->flags[0] = 0;

 return err;
}
