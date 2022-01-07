
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ io_mem_addr; } ;
typedef TYPE_3__ ctlr_info_t ;
struct TYPE_6__ {unsigned char rcode; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
struct TYPE_9__ {TYPE_2__ req; } ;
typedef TYPE_4__ cmdlist_t ;


 int CHANNEL_BUSY ;
 int CHANNEL_CLEAR ;
 scalar_t__ SMART1_COMPLETE_ADDR ;
 scalar_t__ SMART1_LISTSTATUS ;
 scalar_t__ SMART1_LOCAL_DOORBELL ;
 scalar_t__ SMART1_SYSTEM_DOORBELL ;
 scalar_t__ bus_to_virt (unsigned long) ;
 int inb (scalar_t__) ;
 unsigned long inl (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static unsigned long smart1_completed(ctlr_info_t *h)
{
 unsigned char status;
 unsigned long cmd;

 if (inb(h->io_mem_addr + SMART1_SYSTEM_DOORBELL) & CHANNEL_BUSY) {
  outb(CHANNEL_BUSY, h->io_mem_addr + SMART1_SYSTEM_DOORBELL);

  cmd = inl(h->io_mem_addr + SMART1_COMPLETE_ADDR);
  status = inb(h->io_mem_addr + SMART1_LISTSTATUS);

  outb(CHANNEL_CLEAR, h->io_mem_addr + SMART1_LOCAL_DOORBELL);




  if (cmd) ((cmdlist_t*)bus_to_virt(cmd))->req.hdr.rcode = status;
 } else {
  cmd = 0;
 }
 return cmd;
}
