
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_1__* iop; } ;
struct TYPE_5__ {TYPE_3__ itl; } ;
struct hptiop_hba {TYPE_2__ u; } ;
struct TYPE_4__ {int outbound_intstatus; int outbound_queue; int inbound_queue; } ;


 int IOPMU_QUEUE_EMPTY ;
 int msleep (int) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static int iop_wait_ready_itl(struct hptiop_hba *hba, u32 millisec)
{
 u32 req = 0;
 int i;

 for (i = 0; i < millisec; i++) {
  req = readl(&hba->u.itl.iop->inbound_queue);
  if (req != IOPMU_QUEUE_EMPTY)
   break;
  msleep(1);
 }

 if (req != IOPMU_QUEUE_EMPTY) {
  writel(req, &hba->u.itl.iop->outbound_queue);
  readl(&hba->u.itl.iop->outbound_intstatus);
  return 0;
 }

 return -1;
}
