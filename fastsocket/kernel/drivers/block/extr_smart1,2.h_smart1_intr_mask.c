
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ io_mem_addr; } ;
typedef TYPE_1__ ctlr_info_t ;


 int CHANNEL_BUSY ;
 scalar_t__ SMART1_INTR_MASK ;
 scalar_t__ SMART1_LOCAL_DOORBELL ;
 scalar_t__ SMART1_SYSTEM_DOORBELL ;
 scalar_t__ SMART1_SYSTEM_MASK ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void smart1_intr_mask(ctlr_info_t *h, unsigned long val)
{
 if (val == 1) {
  outb(0xFD, h->io_mem_addr + SMART1_SYSTEM_DOORBELL);
  outb(CHANNEL_BUSY, h->io_mem_addr + SMART1_LOCAL_DOORBELL);
  outb(0x01, h->io_mem_addr + SMART1_INTR_MASK);
  outb(0x01, h->io_mem_addr + SMART1_SYSTEM_MASK);
 } else {
  outb(0, h->io_mem_addr + 0xC8E);
 }
}
