
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rwlock_t ;
struct TYPE_2__ {scalar_t__ ibf; int status_io; int ibf_lock; } ;


 int HP_SDC_STATUS_IBF ;
 TYPE_1__ hp_sdc ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock (int *) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int sdc_readb (int ) ;
 int write_lock (int *) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void hp_sdc_spin_ibf(void)
{
 unsigned long flags;
 rwlock_t *lock;

 lock = &hp_sdc.ibf_lock;

 read_lock_irqsave(lock, flags);
 if (!hp_sdc.ibf) {
  read_unlock_irqrestore(lock, flags);
  return;
 }
 read_unlock(lock);
 write_lock(lock);
 while (sdc_readb(hp_sdc.status_io) & HP_SDC_STATUS_IBF)
  { }
 hp_sdc.ibf = 0;
 write_unlock_irqrestore(lock, flags);
}
