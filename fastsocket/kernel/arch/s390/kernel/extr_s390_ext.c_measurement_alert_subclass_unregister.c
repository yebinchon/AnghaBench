
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctl_clear_bit (int ,int) ;
 int ma_subclass_lock ;
 int ma_subclass_refcount ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void measurement_alert_subclass_unregister(void)
{
 spin_lock(&ma_subclass_lock);
 ma_subclass_refcount--;
 if (!ma_subclass_refcount)
  ctl_clear_bit(0, 5);
 spin_unlock(&ma_subclass_lock);
}
