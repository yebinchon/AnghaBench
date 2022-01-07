
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_3__ {int mac_r_restart_counter; } ;
struct TYPE_4__ {TYPE_1__ mac_ct; } ;
struct s_smc {TYPE_2__ hw; } ;


 int FM_SRBFL2 ;
 int FM_SRCVOVR2 ;
 int FM_SRPERRQ1 ;
 int FM_SRPERRQ2 ;
 int SMT_E0115 ;
 int SMT_E0115_MSG ;
 int SMT_E0116 ;
 int SMT_E0116_MSG ;
 int SMT_PANIC (struct s_smc*,int ,int ) ;
 int UNUSED (int) ;
 int smt_stat_counter (struct s_smc*,int) ;

void mac3_irq(struct s_smc *smc, u_short code_s3u, u_short code_s3l)
{
 UNUSED(code_s3l) ;

 if (code_s3u & (FM_SRCVOVR2 |
   FM_SRBFL2)) {
  smc->hw.mac_ct.mac_r_restart_counter++ ;
  smt_stat_counter(smc,1);
 }


 if (code_s3u & FM_SRPERRQ2) {
  SMT_PANIC(smc,SMT_E0115, SMT_E0115_MSG) ;
 }
 if (code_s3u & FM_SRPERRQ1) {
  SMT_PANIC(smc,SMT_E0116, SMT_E0116_MSG) ;
 }
}
