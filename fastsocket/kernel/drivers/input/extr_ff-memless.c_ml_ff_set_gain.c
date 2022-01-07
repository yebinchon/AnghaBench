
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ml_device {TYPE_2__* states; int gain; } ;
struct input_dev {TYPE_1__* ff; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct ml_device* private; } ;


 int FF_EFFECT_PLAYING ;
 int FF_MEMLESS_EFFECTS ;
 int __clear_bit (int ,int *) ;
 int ml_play_effects (struct ml_device*) ;

__attribute__((used)) static void ml_ff_set_gain(struct input_dev *dev, u16 gain)
{
 struct ml_device *ml = dev->ff->private;
 int i;

 ml->gain = gain;

 for (i = 0; i < FF_MEMLESS_EFFECTS; i++)
  __clear_bit(FF_EFFECT_PLAYING, &ml->states[i].flags);

 ml_play_effects(ml);
}
