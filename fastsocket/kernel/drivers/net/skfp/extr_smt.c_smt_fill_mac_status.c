
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smt_p_mac_status {int st_lost_ct; int st_error_ct; int st_frame_ct; int st_sba; int st_t_min; int st_tvx_value; int st_t_max; int st_t_neg; int st_t_req; int st_mac_index; int st_mib_index; } ;
struct TYPE_6__ {TYPE_2__* m; TYPE_1__* a; } ;
struct s_smc {TYPE_3__ mib; } ;
struct TYPE_5__ {int fddiMACLost_Ct; int fddiMACError_Ct; int fddiMACFrame_Ct; int fddiMACT_Min; int fddiMACTvxValue; int fddiMACT_Max; int fddiMACT_Neg; int fddiMACT_Req; } ;
struct TYPE_4__ {int fddiPATHSbaPayload; } ;


 int INDEX_MAC ;
 size_t MAC0 ;
 size_t PATH0 ;
 int SMTSETPARA (struct smt_p_mac_status*,int ) ;
 int SMT_P_MAC_STATUS ;
 int mac_index (struct s_smc*,int) ;
 int mac_update_counter (struct s_smc*) ;

__attribute__((used)) static void smt_fill_mac_status(struct s_smc *smc, struct smt_p_mac_status *st)
{
 SMTSETPARA(st,SMT_P_MAC_STATUS) ;

 st->st_mib_index = INDEX_MAC ;
 st->st_mac_index = mac_index(smc,1) ;

 mac_update_counter(smc) ;




 st->st_t_req = smc->mib.m[MAC0].fddiMACT_Req ;
 st->st_t_neg = smc->mib.m[MAC0].fddiMACT_Neg ;
 st->st_t_max = smc->mib.m[MAC0].fddiMACT_Max ;
 st->st_tvx_value = smc->mib.m[MAC0].fddiMACTvxValue ;
 st->st_t_min = smc->mib.m[MAC0].fddiMACT_Min ;

 st->st_sba = smc->mib.a[PATH0].fddiPATHSbaPayload ;
 st->st_frame_ct = smc->mib.m[MAC0].fddiMACFrame_Ct ;
 st->st_error_ct = smc->mib.m[MAC0].fddiMACError_Ct ;
 st->st_lost_ct = smc->mib.m[MAC0].fddiMACLost_Ct ;
}
