
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_work {int dummy; } ;
struct sas_ha_struct {int lock; } ;


 int sas_queue_work (struct sas_ha_struct*,struct sas_work*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int,unsigned long*) ;

__attribute__((used)) static void sas_queue_event(int event, unsigned long *pending,
       struct sas_work *work,
       struct sas_ha_struct *ha)
{
 if (!test_and_set_bit(event, pending)) {
  unsigned long flags;

  spin_lock_irqsave(&ha->lock, flags);
  sas_queue_work(ha, work);
  spin_unlock_irqrestore(&ha->lock, flags);
 }
}
