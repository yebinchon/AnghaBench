
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int output_mode; int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ivtv_set_output_mode(struct ivtv *itv, int mode)
{
    int old_mode;

    spin_lock(&itv->lock);
    old_mode = itv->output_mode;
    if (old_mode == 0)
 itv->output_mode = old_mode = mode;
    spin_unlock(&itv->lock);
    return old_mode;
}
