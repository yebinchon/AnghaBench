
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ io_mem_addr; } ;
typedef TYPE_1__ ctlr_info_t ;


 unsigned char CHANNEL_CLEAR ;
 scalar_t__ SMART1_SYSTEM_DOORBELL ;
 unsigned char inb (scalar_t__) ;

__attribute__((used)) static unsigned long smart1_fifo_full(ctlr_info_t *h)
{
 unsigned char chan;
 chan = inb(h->io_mem_addr + SMART1_SYSTEM_DOORBELL) & CHANNEL_CLEAR;
 return chan;
}
