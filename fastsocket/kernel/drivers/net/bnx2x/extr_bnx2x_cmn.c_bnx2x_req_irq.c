
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bnx2x {int flags; TYPE_3__* dev; TYPE_2__* pdev; TYPE_1__* msix_table; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {unsigned int irq; } ;
struct TYPE_4__ {unsigned int vector; } ;


 unsigned long IRQF_SHARED ;
 int USING_MSIX_FLAG ;
 int USING_MSI_FLAG ;
 int bnx2x_interrupt ;
 int request_irq (unsigned int,int ,unsigned long,int ,TYPE_3__*) ;

__attribute__((used)) static int bnx2x_req_irq(struct bnx2x *bp)
{
 unsigned long flags;
 unsigned int irq;

 if (bp->flags & (USING_MSI_FLAG | USING_MSIX_FLAG))
  flags = 0;
 else
  flags = IRQF_SHARED;

 if (bp->flags & USING_MSIX_FLAG)
  irq = bp->msix_table[0].vector;
 else
  irq = bp->pdev->irq;

 return request_irq(irq, bnx2x_interrupt, flags, bp->dev->name, bp->dev);
}
