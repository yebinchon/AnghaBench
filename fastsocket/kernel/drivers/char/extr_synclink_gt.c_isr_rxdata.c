
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mode; } ;
struct slgt_info {unsigned int rbuf_fill_count; unsigned int rbuf_fill_index; int rx_restart; unsigned int rbuf_fill_level; unsigned int rbuf_count; int pending_bh; TYPE_2__* rbufs; TYPE_1__ params; int device_name; } ;
struct TYPE_6__ {unsigned char* buf; } ;


 int BH_RECEIVE ;
 unsigned short BIT10 ;
 unsigned short BIT15 ;
 int DBGISR (char*) ;
 int IRQ_RXDATA ;
 scalar_t__ MGSL_MODE_ASYNC ;
 int RDR ;
 int SSR ;
 scalar_t__ desc_complete (TYPE_2__) ;
 int rd_reg16 (struct slgt_info*,int ) ;
 int rx_stop (struct slgt_info*) ;
 int set_desc_count (TYPE_2__,unsigned int) ;
 int set_desc_status (TYPE_2__,unsigned short) ;

__attribute__((used)) static void isr_rxdata(struct slgt_info *info)
{
 unsigned int count = info->rbuf_fill_count;
 unsigned int i = info->rbuf_fill_index;
 unsigned short reg;

 while (rd_reg16(info, SSR) & IRQ_RXDATA) {
  reg = rd_reg16(info, RDR);
  DBGISR(("isr_rxdata %s RDR=%04X\n", info->device_name, reg));
  if (desc_complete(info->rbufs[i])) {

   rx_stop(info);
   info->rx_restart = 1;
   continue;
  }
  info->rbufs[i].buf[count++] = (unsigned char)reg;

  if (info->params.mode == MGSL_MODE_ASYNC)
   info->rbufs[i].buf[count++] = (unsigned char)(reg >> 8);
  if (count == info->rbuf_fill_level || (reg & BIT10)) {

   set_desc_count(info->rbufs[i], count);
   set_desc_status(info->rbufs[i], BIT15 | (reg >> 8));
   info->rbuf_fill_count = count = 0;
   if (++i == info->rbuf_count)
    i = 0;
   info->pending_bh |= BH_RECEIVE;
  }
 }

 info->rbuf_fill_index = i;
 info->rbuf_fill_count = count;
}
