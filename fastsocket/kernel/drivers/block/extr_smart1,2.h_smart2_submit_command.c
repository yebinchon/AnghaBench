
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ vaddr; } ;
typedef TYPE_1__ ctlr_info_t ;
struct TYPE_6__ {int busaddr; } ;
typedef TYPE_2__ cmdlist_t ;


 scalar_t__ COMMAND_FIFO ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void smart2_submit_command(ctlr_info_t *h, cmdlist_t *c)
{
 writel(c->busaddr, h->vaddr + COMMAND_FIFO);
}
