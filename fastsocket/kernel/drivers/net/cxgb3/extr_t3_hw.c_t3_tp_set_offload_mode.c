
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_TP_IN_CONFIG ;
 int F_NICMODE ;
 int V_NICMODE (int) ;
 scalar_t__ is_offload (struct adapter*) ;
 int t3_set_reg_field (struct adapter*,int ,int ,int ) ;

void t3_tp_set_offload_mode(struct adapter *adap, int enable)
{
 if (is_offload(adap) || !enable)
  t3_set_reg_field(adap, A_TP_IN_CONFIG, F_NICMODE,
     V_NICMODE(!enable));
}
