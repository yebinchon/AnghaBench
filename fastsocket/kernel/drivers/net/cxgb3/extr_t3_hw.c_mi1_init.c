
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct adapter_info {int dummy; } ;
struct TYPE_3__ {int cclk; int mdc; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;


 int A_MI1_CFG ;
 int F_PREEN ;
 int V_CLKDIV (int) ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void mi1_init(struct adapter *adap, const struct adapter_info *ai)
{
 u32 clkdiv = adap->params.vpd.cclk / (2 * adap->params.vpd.mdc) - 1;
 u32 val = F_PREEN | V_CLKDIV(clkdiv);

 t3_write_reg(adap, A_MI1_CFG, val);
}
