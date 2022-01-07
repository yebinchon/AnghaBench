
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct adapter_info {int gpio_out; } ;
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {scalar_t__ rev; TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;


 int A_I2C_CFG ;
 int A_MC5_DB_SERVER_INDEX ;
 int A_SG_OCO_BASE ;
 int A_T3DBG_GPIO_EN ;
 int A_XGM_PORT_CFG ;
 int F_CLKDIVRESET_ ;
 int F_ENRGMII ;
 int F_GPIO0_OEN ;
 int F_GPIO0_OUT_VAL ;
 int V_BASE1 (int) ;
 int V_I2C_CLKDIV (int) ;
 int V_PORTSPEED (int) ;
 int XGM_REG (int ,int) ;
 scalar_t__ is_10G (struct adapter*) ;
 int mi1_init (struct adapter*,struct adapter_info const*) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,int) ;
 int uses_xaui (struct adapter*) ;

__attribute__((used)) static void early_hw_init(struct adapter *adapter,
     const struct adapter_info *ai)
{
 u32 val = V_PORTSPEED(is_10G(adapter) ? 3 : 2);

 mi1_init(adapter, ai);
 t3_write_reg(adapter, A_I2C_CFG,
       V_I2C_CLKDIV(adapter->params.vpd.cclk / 80 - 1));
 t3_write_reg(adapter, A_T3DBG_GPIO_EN,
       ai->gpio_out | F_GPIO0_OEN | F_GPIO0_OUT_VAL);
 t3_write_reg(adapter, A_MC5_DB_SERVER_INDEX, 0);
 t3_write_reg(adapter, A_SG_OCO_BASE, V_BASE1(0xfff));

 if (adapter->params.rev == 0 || !uses_xaui(adapter))
  val |= F_ENRGMII;


 t3_write_reg(adapter, A_XGM_PORT_CFG, val);
 t3_read_reg(adapter, A_XGM_PORT_CFG);

 val |= F_CLKDIVRESET_;
 t3_write_reg(adapter, A_XGM_PORT_CFG, val);
 t3_read_reg(adapter, A_XGM_PORT_CFG);
 t3_write_reg(adapter, XGM_REG(A_XGM_PORT_CFG, 1), val);
 t3_read_reg(adapter, A_XGM_PORT_CFG);
}
