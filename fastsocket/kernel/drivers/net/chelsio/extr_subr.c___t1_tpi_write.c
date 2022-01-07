
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int name; scalar_t__ regs; } ;
typedef TYPE_1__ adapter_t ;


 scalar_t__ A_TPI_ADDR ;
 scalar_t__ A_TPI_CSR ;
 scalar_t__ A_TPI_WR_DATA ;
 int CH_ALERT (char*,int ,int ) ;
 int F_TPIRDY ;
 int F_TPIWR ;
 int TPI_ATTEMPTS ;
 int t1_wait_op_done (TYPE_1__*,scalar_t__,int ,int,int ,int) ;
 int writel (int ,scalar_t__) ;

int __t1_tpi_write(adapter_t *adapter, u32 addr, u32 value)
{
 int tpi_busy;

 writel(addr, adapter->regs + A_TPI_ADDR);
 writel(value, adapter->regs + A_TPI_WR_DATA);
 writel(F_TPIWR, adapter->regs + A_TPI_CSR);

 tpi_busy = t1_wait_op_done(adapter, A_TPI_CSR, F_TPIRDY, 1,
       TPI_ATTEMPTS, 3);
 if (tpi_busy)
  CH_ALERT("%s: TPI write to 0x%x failed\n",
    adapter->name, addr);
 return tpi_busy;
}
