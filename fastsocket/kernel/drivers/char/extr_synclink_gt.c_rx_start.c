
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mode; } ;
struct slgt_info {int rx_restart; int rx_enabled; TYPE_2__ params; TYPE_1__* rbufs; scalar_t__ rx_pio; } ;
struct TYPE_3__ {scalar_t__ pdesc; } ;


 scalar_t__ BIT0 ;
 unsigned short BIT1 ;
 unsigned short BIT14 ;
 unsigned short BIT2 ;
 scalar_t__ BIT6 ;
 unsigned short IRQ_RXDATA ;
 unsigned short IRQ_RXOVER ;
 scalar_t__ MGSL_MODE_ASYNC ;
 int RCR ;
 int RDCSR ;
 int RDDAR ;
 int SCR ;
 int SSR ;
 unsigned short rd_reg16 (struct slgt_info*,int ) ;
 int rdma_reset (struct slgt_info*) ;
 int reset_rbufs (struct slgt_info*) ;
 int slgt_irq_off (struct slgt_info*,unsigned short) ;
 int slgt_irq_on (struct slgt_info*,unsigned short) ;
 int wr_reg16 (struct slgt_info*,int ,unsigned short) ;
 int wr_reg32 (struct slgt_info*,int ,scalar_t__) ;

__attribute__((used)) static void rx_start(struct slgt_info *info)
{
 unsigned short val;

 slgt_irq_off(info, IRQ_RXOVER + IRQ_RXDATA);


 wr_reg16(info, SSR, IRQ_RXOVER);


 val = rd_reg16(info, RCR) & ~BIT1;
 wr_reg16(info, RCR, (unsigned short)(val | BIT2));
 wr_reg16(info, RCR, val);

 rdma_reset(info);
 reset_rbufs(info);

 if (info->rx_pio) {

  wr_reg16(info, SCR, (unsigned short)(rd_reg16(info, SCR) & ~BIT14));
  slgt_irq_on(info, IRQ_RXDATA);
  if (info->params.mode == MGSL_MODE_ASYNC) {

   wr_reg32(info, RDCSR, BIT6);
  }
 } else {

  wr_reg16(info, SCR, (unsigned short)(rd_reg16(info, SCR) | BIT14));

  wr_reg32(info, RDDAR, info->rbufs[0].pdesc);

  if (info->params.mode != MGSL_MODE_ASYNC) {

   wr_reg32(info, RDCSR, (BIT2 + BIT0));
  } else {

   wr_reg32(info, RDCSR, (BIT6 + BIT2 + BIT0));
  }
 }

 slgt_irq_on(info, IRQ_RXOVER);


 wr_reg16(info, RCR, (unsigned short)(rd_reg16(info, RCR) | BIT1));

 info->rx_restart = 0;
 info->rx_enabled = 1;
}
