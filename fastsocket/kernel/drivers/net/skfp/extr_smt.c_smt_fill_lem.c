
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smt_p_lem {int lem_ct; int lem_reject_ct; int lem_estimate; int lem_alarm; int lem_cutoff; scalar_t__ lem_pad2; int lem_phy_index; scalar_t__ lem_mib_index; } ;
struct s_smc {TYPE_1__* y; } ;
struct fddi_mib_p {int fddiPORTLem_Ct; int fddiPORTLem_Reject_Ct; int fddiPORTLer_Estimate; int fddiPORTLer_Alarm; int fddiPORTLer_Cutoff; } ;
struct TYPE_2__ {struct fddi_mib_p* mib; } ;


 scalar_t__ INDEX_PORT ;
 int SMTSETPARA (struct smt_p_lem*,int ) ;
 int SMT_P_LEM ;
 int phy_index (struct s_smc*,int) ;

__attribute__((used)) static void smt_fill_lem(struct s_smc *smc, struct smt_p_lem *lem, int phy)
{
 struct fddi_mib_p *mib ;

 mib = smc->y[phy].mib ;

 SMTSETPARA(lem,SMT_P_LEM) ;
 lem->lem_mib_index = phy+INDEX_PORT ;
 lem->lem_phy_index = phy_index(smc,phy) ;
 lem->lem_pad2 = 0 ;
 lem->lem_cutoff = mib->fddiPORTLer_Cutoff ;
 lem->lem_alarm = mib->fddiPORTLer_Alarm ;

 lem->lem_estimate = mib->fddiPORTLer_Estimate ;

 lem->lem_reject_ct = mib->fddiPORTLem_Reject_Ct ;
 lem->lem_ct = mib->fddiPORTLem_Ct ;
}
