
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahd_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int spin_lock; } ;


 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void
ahd_unlock(struct ahd_softc *ahd, unsigned long *flags)
{
 spin_unlock_irqrestore(&ahd->platform_data->spin_lock, *flags);
}
