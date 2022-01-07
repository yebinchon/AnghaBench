
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;


 int qlcnic_83xx_rd_reg_indirect (struct qlcnic_adapter*,int ) ;
 int qlcnic_83xx_wrt_reg_indirect (struct qlcnic_adapter*,int ,int) ;

__attribute__((used)) static void qlcnic_83xx_read_write_crb_reg(struct qlcnic_adapter *p_dev,
        u32 raddr, u32 waddr)
{
 int value;

 value = qlcnic_83xx_rd_reg_indirect(p_dev, raddr);
 qlcnic_83xx_wrt_reg_indirect(p_dev, waddr, value);
}
