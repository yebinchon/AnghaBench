
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rio_mport {int id; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dsend ) (struct rio_mport*,int ,int ,int ) ;} ;


 int rio_doorbell_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct rio_mport*,int ,int ,int ) ;

int rio_mport_send_doorbell(struct rio_mport *mport, u16 destid, u16 data)
{
 int res;
 unsigned long flags;

 spin_lock_irqsave(&rio_doorbell_lock, flags);
 res = mport->ops->dsend(mport, mport->id, destid, data);
 spin_unlock_irqrestore(&rio_doorbell_lock, flags);

 return res;
}
