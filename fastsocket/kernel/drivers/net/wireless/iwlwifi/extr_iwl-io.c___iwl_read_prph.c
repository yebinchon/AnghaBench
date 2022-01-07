
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dev; } ;


 int iwl_trans_read_prph (struct iwl_trans*,int ) ;
 int trace_iwlwifi_dev_ioread_prph32 (int ,int ,int ) ;

__attribute__((used)) static inline u32 __iwl_read_prph(struct iwl_trans *trans, u32 ofs)
{
 u32 val = iwl_trans_read_prph(trans, ofs);
 trace_iwlwifi_dev_ioread_prph32(trans->dev, ofs, val);
 return val;
}
