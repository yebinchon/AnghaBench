
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahc_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int spin_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;

__attribute__((used)) static inline void
ahc_lock(struct ahc_softc *ahc, unsigned long *flags)
{
 spin_lock_irqsave(&ahc->platform_data->spin_lock, *flags);
}
