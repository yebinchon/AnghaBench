
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aic7xxx_scb {TYPE_1__* hscb; } ;
struct aic7xxx_host {scalar_t__* qoutfifo; int qoutfifonext; } ;
struct TYPE_2__ {scalar_t__ tag; } ;


 int FALSE ;
 scalar_t__ SCB_LIST_NULL ;
 int TRUE ;

__attribute__((used)) static int
aic7xxx_scb_on_qoutfifo(struct aic7xxx_host *p, struct aic7xxx_scb *scb)
{
  int i=0;

  while(p->qoutfifo[(p->qoutfifonext + i) & 0xff ] != SCB_LIST_NULL)
  {
    if(p->qoutfifo[(p->qoutfifonext + i) & 0xff ] == scb->hscb->tag)
      return TRUE;
    else
      i++;
  }
  return FALSE;
}
