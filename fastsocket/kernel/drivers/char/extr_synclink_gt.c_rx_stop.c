
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int rx_enabled; int rx_restart; } ;


 unsigned short BIT1 ;
 unsigned short BIT2 ;
 scalar_t__ IRQ_RXDATA ;
 unsigned short IRQ_RXIDLE ;
 unsigned short IRQ_RXOVER ;
 int RCR ;
 int SSR ;
 unsigned short rd_reg16 (struct slgt_info*,int ) ;
 int rdma_reset (struct slgt_info*) ;
 int slgt_irq_off (struct slgt_info*,scalar_t__) ;
 int wr_reg16 (struct slgt_info*,int ,unsigned short) ;

__attribute__((used)) static void rx_stop(struct slgt_info *info)
{
 unsigned short val;


 val = rd_reg16(info, RCR) & ~BIT1;
 wr_reg16(info, RCR, (unsigned short)(val | BIT2));
 wr_reg16(info, RCR, val);

 slgt_irq_off(info, IRQ_RXOVER + IRQ_RXDATA + IRQ_RXIDLE);


 wr_reg16(info, SSR, IRQ_RXIDLE + IRQ_RXOVER);

 rdma_reset(info);

 info->rx_enabled = 0;
 info->rx_restart = 0;
}
