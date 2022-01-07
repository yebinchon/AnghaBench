
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iwl_priv {TYPE_1__* trans; } ;
struct TYPE_5__ {int dev; } ;


 int HBUS_TARG_MEM_RADDR ;
 int HBUS_TARG_MEM_RDAT ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ iwl_read32 (TYPE_1__*,int ) ;
 int iwl_trans_grab_nic_access (TYPE_1__*,int,unsigned long*) ;
 int iwl_trans_release_nic_access (TYPE_1__*,unsigned long*) ;
 int iwl_write32 (TYPE_1__*,int ,scalar_t__) ;
 int trace_iwlwifi_dev_ucode_cont_event (int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void iwl_print_cont_event_trace(struct iwl_priv *priv, u32 base,
     u32 start_idx, u32 num_events,
     u32 capacity, u32 mode)
{
 u32 i;
 u32 ptr;
 u32 ev, time, data;
 unsigned long reg_flags;

 if (mode == 0)
  ptr = base + (4 * sizeof(u32)) + (start_idx * 2 * sizeof(u32));
 else
  ptr = base + (4 * sizeof(u32)) + (start_idx * 3 * sizeof(u32));


 if (!iwl_trans_grab_nic_access(priv->trans, 0, &reg_flags))
  return;


 iwl_write32(priv->trans, HBUS_TARG_MEM_RADDR, ptr);







 if (WARN_ON(num_events > capacity - start_idx))
  num_events = capacity - start_idx;





 for (i = 0; i < num_events; i++) {
  ev = iwl_read32(priv->trans, HBUS_TARG_MEM_RDAT);
  time = iwl_read32(priv->trans, HBUS_TARG_MEM_RDAT);
  if (mode == 0) {
   trace_iwlwifi_dev_ucode_cont_event(
     priv->trans->dev, 0, time, ev);
  } else {
   data = iwl_read32(priv->trans, HBUS_TARG_MEM_RDAT);
   trace_iwlwifi_dev_ucode_cont_event(
     priv->trans->dev, time, data, ev);
  }
 }

 iwl_trans_release_nic_access(priv->trans, &reg_flags);
}
