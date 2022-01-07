
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct scc_channel {int clock; int lock; TYPE_1__ modem; } ;


 int set_brg (struct scc_channel*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void set_speed(struct scc_channel *scc)
{
 unsigned long flags;
 spin_lock_irqsave(&scc->lock, flags);

 if (scc->modem.speed > 0)
  set_brg(scc, (unsigned) (scc->clock / (scc->modem.speed * 64)) - 2);

 spin_unlock_irqrestore(&scc->lock, flags);
}
