
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int status; } ;
struct il4965_tx_resp {int frame_count; TYPE_1__ u; } ;


 int IEEE80211_MAX_SN ;
 int le32_to_cpup (int *) ;

__attribute__((used)) static inline u32
il4965_get_scd_ssn(struct il4965_tx_resp *tx_resp)
{
 return le32_to_cpup(&tx_resp->u.status +
       tx_resp->frame_count) & IEEE80211_MAX_SN;
}
