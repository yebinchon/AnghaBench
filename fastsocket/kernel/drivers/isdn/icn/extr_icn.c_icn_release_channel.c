
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int devlock; } ;


 int __icn_release_channel () ;
 TYPE_1__ dev ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static inline void
icn_release_channel(void)
{
 ulong flags;

 spin_lock_irqsave(&dev.devlock, flags);
 __icn_release_channel();
 spin_unlock_irqrestore(&dev.devlock, flags);
}
