
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int XGMAC_ADDR ;
 int XGMAC_ADDR_R ;
 int XGMAC_ADDR_RDY ;
 int XGMAC_ADDR_XME ;
 int XGMAC_DATA ;
 int ql_read_other_func_reg (struct ql_adapter*,int) ;
 int ql_wait_other_func_reg_rdy (struct ql_adapter*,int,int ,int ) ;
 int ql_write_other_func_reg (struct ql_adapter*,int,int) ;

__attribute__((used)) static int ql_read_other_func_xgmac_reg(struct ql_adapter *qdev, u32 reg,
       u32 *data)
{
 int status = 0;


 status = ql_wait_other_func_reg_rdy(qdev, XGMAC_ADDR / 4,
      XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
 if (status)
  goto exit;


 ql_write_other_func_reg(qdev, XGMAC_ADDR / 4, reg | XGMAC_ADDR_R);


 status = ql_wait_other_func_reg_rdy(qdev, XGMAC_ADDR / 4,
      XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
 if (status)
  goto exit;


 *data = ql_read_other_func_reg(qdev, XGMAC_DATA / 4);
exit:
 return status;
}
