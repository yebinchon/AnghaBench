
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dev; } ;


 int iwl_trans_read32 (struct iwl_trans*,int ) ;
 int trace_iwlwifi_dev_ioread32 (int ,int ,int ) ;

__attribute__((used)) static inline u32 iwl_read32(struct iwl_trans *trans, u32 ofs)
{
 u32 val = iwl_trans_read32(trans, ofs);
 trace_iwlwifi_dev_ioread32(trans->dev, ofs, val);
 return val;
}
