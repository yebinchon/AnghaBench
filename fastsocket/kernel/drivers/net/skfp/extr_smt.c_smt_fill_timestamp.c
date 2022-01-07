
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smt_p_timestamp {int ts_time; } ;
struct s_smc {int dummy; } ;


 int SMTSETPARA (struct smt_p_timestamp*,int ) ;
 int SMT_P_TIMESTAMP ;
 int smt_set_timestamp (struct s_smc*,int ) ;

__attribute__((used)) static void smt_fill_timestamp(struct s_smc *smc, struct smt_p_timestamp *ts)
{

 SMTSETPARA(ts,SMT_P_TIMESTAMP) ;
 smt_set_timestamp(smc,ts->ts_time) ;
}
