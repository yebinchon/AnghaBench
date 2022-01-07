
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctl_set_bit (int ,int) ;
 int ma_subclass_lock ;
 int ma_subclass_refcount ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void measurement_alert_subclass_register(void)
{
 spin_lock(&ma_subclass_lock);
 if (!ma_subclass_refcount)
  ctl_set_bit(0, 5);
 ma_subclass_refcount++;
 spin_unlock(&ma_subclass_lock);
}
