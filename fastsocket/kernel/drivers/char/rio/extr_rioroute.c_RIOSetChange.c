
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_info {scalar_t__ RIOQuickCheck; scalar_t__ RIOSignalProcess; } ;


 scalar_t__ CHANGED ;
 scalar_t__ NOT_CHANGED ;
 int RIO_DEBUG_ROUTE ;
 int rio_dprintk (int ,char*) ;

int RIOSetChange(struct rio_info *p)
{
 if (p->RIOQuickCheck != NOT_CHANGED)
  return (0);
 p->RIOQuickCheck = CHANGED;
 if (p->RIOSignalProcess) {
  rio_dprintk(RIO_DEBUG_ROUTE, "Send SIG-HUP");



 }
 return (0);
}
