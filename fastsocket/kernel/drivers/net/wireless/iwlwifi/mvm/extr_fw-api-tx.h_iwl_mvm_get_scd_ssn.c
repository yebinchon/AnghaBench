
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm_tx_resp {int frame_count; int status; } ;
typedef int __le32 ;


 int le32_to_cpup (int *) ;

__attribute__((used)) static inline u32 iwl_mvm_get_scd_ssn(struct iwl_mvm_tx_resp *tx_resp)
{
 return le32_to_cpup((__le32 *)&tx_resp->status +
       tx_resp->frame_count) & 0xfff;
}
