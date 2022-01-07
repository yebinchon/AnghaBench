
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tp_params {int dummy; } ;
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;


 int A_TP_RESET ;
 int CH_ERR (struct adapter*,char*) ;
 int F_FLSTINITENABLE ;
 int F_TPRESET ;
 scalar_t__ is_offload (struct adapter*) ;
 int t3_set_vlan_accel (struct adapter*,int,int ) ;
 int t3_wait_op_done (struct adapter*,int ,int ,int ,int,int) ;
 int t3_write_reg (struct adapter*,int ,int ) ;
 int tp_config (struct adapter*,struct tp_params const*) ;
 int tp_set_timers (struct adapter*,int) ;

__attribute__((used)) static int tp_init(struct adapter *adap, const struct tp_params *p)
{
 int busy = 0;

 tp_config(adap, p);
 t3_set_vlan_accel(adap, 3, 0);

 if (is_offload(adap)) {
  tp_set_timers(adap, adap->params.vpd.cclk * 1000);
  t3_write_reg(adap, A_TP_RESET, F_FLSTINITENABLE);
  busy = t3_wait_op_done(adap, A_TP_RESET, F_FLSTINITENABLE,
           0, 1000, 5);
  if (busy)
   CH_ERR(adap, "TP initialization timed out\n");
 }

 if (!busy)
  t3_write_reg(adap, A_TP_RESET, F_TPRESET);
 return busy;
}
