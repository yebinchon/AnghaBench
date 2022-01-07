
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ctlr_info {scalar_t__ vaddr; TYPE_1__* pdev; } ;
struct TYPE_5__ {int lower; } ;
struct TYPE_6__ {TYPE_2__ Tag; } ;
struct CommandList {int busaddr; TYPE_3__ Header; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ SA5_REQUEST_PORT_OFFSET ;
 scalar_t__ SA5_SCRATCHPAD_OFFSET ;
 int dev_dbg (int *,char*,int ,int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void SA5_submit_command(struct ctlr_info *h,
 struct CommandList *c)
{
 dev_dbg(&h->pdev->dev, "Sending %x, tag = %x\n", c->busaddr,
  c->Header.Tag.lower);
 writel(c->busaddr, h->vaddr + SA5_REQUEST_PORT_OFFSET);
 (void) readl(h->vaddr + SA5_SCRATCHPAD_OFFSET);
}
