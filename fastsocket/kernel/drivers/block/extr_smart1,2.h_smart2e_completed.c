
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ io_mem_addr; } ;
typedef TYPE_1__ ctlr_info_t ;


 scalar_t__ COMMAND_COMPLETE_FIFO ;
 unsigned long inl (scalar_t__) ;

__attribute__((used)) static unsigned long smart2e_completed(ctlr_info_t *h)
{
 return inl(h->io_mem_addr + COMMAND_COMPLETE_FIFO);
}
