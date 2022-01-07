
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vaddr; } ;
typedef TYPE_1__ ctlr_info_t ;


 scalar_t__ COMMAND_COMPLETE_FIFO ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static unsigned long smart2_completed(ctlr_info_t *h)
{
 return readl(h->vaddr + COMMAND_COMPLETE_FIFO);
}
