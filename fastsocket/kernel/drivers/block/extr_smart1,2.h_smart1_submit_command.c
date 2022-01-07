
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ io_mem_addr; } ;
typedef TYPE_2__ ctlr_info_t ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_8__ {int size; int busaddr; TYPE_1__ hdr; } ;
typedef TYPE_3__ cmdlist_t ;


 int CHANNEL_BUSY ;
 int CHANNEL_CLEAR ;
 scalar_t__ SMART1_LISTADDR ;
 scalar_t__ SMART1_LISTLEN ;
 scalar_t__ SMART1_LOCAL_DOORBELL ;
 scalar_t__ SMART1_SYSTEM_DOORBELL ;
 int outb (int ,scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static void smart1_submit_command(ctlr_info_t *h, cmdlist_t *c)
{




 c->hdr.size = 0;

 outb(CHANNEL_CLEAR, h->io_mem_addr + SMART1_SYSTEM_DOORBELL);

 outl(c->busaddr, h->io_mem_addr + SMART1_LISTADDR);
 outw(c->size, h->io_mem_addr + SMART1_LISTLEN);

 outb(CHANNEL_BUSY, h->io_mem_addr + SMART1_LOCAL_DOORBELL);
}
