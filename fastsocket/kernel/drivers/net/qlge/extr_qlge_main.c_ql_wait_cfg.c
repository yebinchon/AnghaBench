
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int CFG ;
 int CFG_LE ;
 int EIO ;
 int ETIMEDOUT ;
 int UDELAY_COUNT ;
 int UDELAY_DELAY ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int udelay (int ) ;

__attribute__((used)) static int ql_wait_cfg(struct ql_adapter *qdev, u32 bit)
{
 int count = UDELAY_COUNT;
 u32 temp;

 while (count) {
  temp = ql_read32(qdev, CFG);
  if (temp & CFG_LE)
   return -EIO;
  if (!(temp & bit))
   return 0;
  udelay(UDELAY_DELAY);
  count--;
 }
 return -ETIMEDOUT;
}
