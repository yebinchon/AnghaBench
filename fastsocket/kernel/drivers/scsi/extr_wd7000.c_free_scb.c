
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ Scb ;


 int freescbs ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* scbfree ;
 int scbpool_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void free_scb(Scb * scb)
{
 unsigned long flags;

 spin_lock_irqsave(&scbpool_lock, flags);

 memset(scb, 0, sizeof(Scb));
 scb->next = scbfree;
 scbfree = scb;
 freescbs++;

 spin_unlock_irqrestore(&scbpool_lock, flags);
}
