
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ regs; int name; } ;
typedef TYPE_1__ adapter_t ;


 scalar_t__ A_TPI_ADDR ;
 scalar_t__ A_TPI_CSR ;
 scalar_t__ A_TPI_RD_DATA ;
 int CH_ALERT (char*,int ,int ) ;
 int F_TPIRDY ;
 int TPI_ATTEMPTS ;
 int readl (scalar_t__) ;
 int t1_wait_op_done (TYPE_1__*,scalar_t__,int ,int,int ,int) ;
 int writel (int ,scalar_t__) ;

int __t1_tpi_read(adapter_t *adapter, u32 addr, u32 *valp)
{
 int tpi_busy;

 writel(addr, adapter->regs + A_TPI_ADDR);
 writel(0, adapter->regs + A_TPI_CSR);

 tpi_busy = t1_wait_op_done(adapter, A_TPI_CSR, F_TPIRDY, 1,
       TPI_ATTEMPTS, 3);
 if (tpi_busy)
  CH_ALERT("%s: TPI read from 0x%x failed\n",
    adapter->name, addr);
 else
  *valp = readl(adapter->regs + A_TPI_RD_DATA);
 return tpi_busy;
}
