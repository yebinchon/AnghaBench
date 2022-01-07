
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_info {int dummy; } ;
struct Host {int HostLock; } ;


 scalar_t__ RIOCheck (struct Host*,unsigned int) ;
 int RIOIsolate (struct rio_info*,struct Host*,unsigned int) ;
 int RIOSetChange (struct rio_info*) ;
 int RIO_DEBUG_ROUTE ;
 int rio_dprintk (int ,char*,unsigned int) ;
 int rio_spin_lock_irqsave (int *,unsigned long) ;
 int rio_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int RIOCheckIsolated(struct rio_info *p, struct Host *HostP, unsigned int UnitId)
{
 unsigned long flags;
 rio_spin_lock_irqsave(&HostP->HostLock, flags);

 if (RIOCheck(HostP, UnitId)) {
  rio_dprintk(RIO_DEBUG_ROUTE, "Unit %d is NOT isolated\n", UnitId);
  rio_spin_unlock_irqrestore(&HostP->HostLock, flags);
  return (0);
 }

 RIOIsolate(p, HostP, UnitId);
 RIOSetChange(p);
 rio_spin_unlock_irqrestore(&HostP->HostLock, flags);
 return 1;
}
