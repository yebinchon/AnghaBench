
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_trans {int dev; } ;


 int iwl_trans_write8 (struct iwl_trans*,int ,int ) ;
 int trace_iwlwifi_dev_iowrite8 (int ,int ,int ) ;

__attribute__((used)) static inline void iwl_write8(struct iwl_trans *trans, u32 ofs, u8 val)
{
 trace_iwlwifi_dev_iowrite8(trans->dev, ofs, val);
 iwl_trans_write8(trans, ofs, val);
}
