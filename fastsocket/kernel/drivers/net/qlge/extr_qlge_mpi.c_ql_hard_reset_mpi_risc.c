
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int CSR ;
 int CSR_CMD_CLR_RST ;
 int CSR_CMD_SET_RST ;
 int CSR_RR ;
 int ETIMEDOUT ;
 int UDELAY_COUNT ;
 int UDELAY_DELAY ;
 int mdelay (int ) ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int ) ;

int ql_hard_reset_mpi_risc(struct ql_adapter *qdev)
{
 u32 tmp;
 int count = UDELAY_COUNT;


 ql_write32(qdev, CSR, CSR_CMD_SET_RST);
 do {
  tmp = ql_read32(qdev, CSR);
  if (tmp & CSR_RR) {
   ql_write32(qdev, CSR, CSR_CMD_CLR_RST);
   break;
  }
  mdelay(UDELAY_DELAY);
  count--;
 } while (count);
 return (count == 0) ? -ETIMEDOUT : 0;
}
