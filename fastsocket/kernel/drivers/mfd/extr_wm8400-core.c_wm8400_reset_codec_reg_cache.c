
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8400 {int io_lock; int * reg_cache; } ;
struct TYPE_2__ {int default_val; scalar_t__ is_codec; } ;


 int ARRAY_SIZE (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* reg_data ;

void wm8400_reset_codec_reg_cache(struct wm8400 *wm8400)
{
 int i;

 mutex_lock(&wm8400->io_lock);


 for (i = 0; i < ARRAY_SIZE(wm8400->reg_cache); i++)
  if (reg_data[i].is_codec)
   wm8400->reg_cache[i] = reg_data[i].default_val;

 mutex_unlock(&wm8400->io_lock);
}
