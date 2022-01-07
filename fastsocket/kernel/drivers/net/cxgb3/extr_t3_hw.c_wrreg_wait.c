
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int CH_ERR (struct adapter*,char*,unsigned int) ;
 int EIO ;
 int F_BUSY ;
 int t3_read_reg (struct adapter*,unsigned int) ;
 int t3_write_reg (struct adapter*,unsigned int,int ) ;

__attribute__((used)) static int wrreg_wait(struct adapter *adapter, unsigned int addr, u32 val)
{
 t3_write_reg(adapter, addr, val);
 t3_read_reg(adapter, addr);
 if (!(t3_read_reg(adapter, addr) & F_BUSY))
  return 0;
 CH_ERR(adapter, "write to MC7 register 0x%x timed out\n", addr);
 return -EIO;
}
