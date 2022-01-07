
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* host; } ;
struct sym_hcb {TYPE_2__ s; } ;
struct TYPE_3__ {int host_lock; } ;


 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int sym_timer (struct sym_hcb*) ;

__attribute__((used)) static void sym53c8xx_timer(unsigned long npref)
{
 struct sym_hcb *np = (struct sym_hcb *)npref;
 unsigned long flags;

 spin_lock_irqsave(np->s.host->host_lock, flags);
 sym_timer(np);
 spin_unlock_irqrestore(np->s.host->host_lock, flags);
}
