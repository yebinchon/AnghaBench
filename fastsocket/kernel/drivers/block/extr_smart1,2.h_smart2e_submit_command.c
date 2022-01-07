
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ io_mem_addr; } ;
typedef TYPE_1__ ctlr_info_t ;
struct TYPE_6__ {int busaddr; } ;
typedef TYPE_2__ cmdlist_t ;


 scalar_t__ COMMAND_FIFO ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static void smart2e_submit_command(ctlr_info_t *h, cmdlist_t *c)
{
 outl(c->busaddr, h->io_mem_addr + COMMAND_FIFO);
}
