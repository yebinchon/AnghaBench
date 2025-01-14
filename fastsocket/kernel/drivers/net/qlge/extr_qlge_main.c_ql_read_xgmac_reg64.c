
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct ql_adapter {int dummy; } ;


 int ql_read_xgmac_reg (struct ql_adapter*,scalar_t__,scalar_t__*) ;

int ql_read_xgmac_reg64(struct ql_adapter *qdev, u32 reg, u64 *data)
{
 int status = 0;
 u32 hi = 0;
 u32 lo = 0;

 status = ql_read_xgmac_reg(qdev, reg, &lo);
 if (status)
  goto exit;

 status = ql_read_xgmac_reg(qdev, reg + 4, &hi);
 if (status)
  goto exit;

 *data = (u64) lo | ((u64) hi << 32);

exit:
 return status;
}
