
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qt2160_data {int lock; int dwork; } ;


 int QT2160_CYCLE_INTERVAL ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void qt2160_schedule_read(struct qt2160_data *qt2160)
{
 spin_lock_irq(&qt2160->lock);
 schedule_delayed_work(&qt2160->dwork, QT2160_CYCLE_INTERVAL);
 spin_unlock_irq(&qt2160->lock);
}
