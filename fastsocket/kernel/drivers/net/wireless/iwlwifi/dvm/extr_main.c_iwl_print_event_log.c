
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iwl_trans {int dev; } ;
struct TYPE_3__ {scalar_t__ log_event_table; } ;
struct iwl_priv {scalar_t__ cur_ucode; TYPE_2__* fw; TYPE_1__ device_pointers; struct iwl_trans* trans; } ;
struct TYPE_4__ {scalar_t__ init_evtlog_ptr; scalar_t__ inst_evtlog_ptr; } ;


 scalar_t__ EVENT_START_OFFSET ;
 int HBUS_TARG_MEM_RADDR ;
 int HBUS_TARG_MEM_RDAT ;
 int IWL_ERR (struct iwl_priv*,char*,scalar_t__,scalar_t__,...) ;
 scalar_t__ IWL_UCODE_INIT ;
 scalar_t__ iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_trans_grab_nic_access (struct iwl_trans*,int,unsigned long*) ;
 int iwl_trans_release_nic_access (struct iwl_trans*,unsigned long*) ;
 int iwl_write32 (struct iwl_trans*,int ,scalar_t__) ;
 scalar_t__ scnprintf (char*,size_t,char*,scalar_t__,scalar_t__,...) ;
 int trace_iwlwifi_dev_ucode_event (int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int iwl_print_event_log(struct iwl_priv *priv, u32 start_idx,
          u32 num_events, u32 mode,
          int pos, char **buf, size_t bufsz)
{
 u32 i;
 u32 base;
 u32 event_size;
 u32 ptr;
 u32 ev, time, data;
 unsigned long reg_flags;

 struct iwl_trans *trans = priv->trans;

 if (num_events == 0)
  return pos;

 base = priv->device_pointers.log_event_table;
 if (priv->cur_ucode == IWL_UCODE_INIT) {
  if (!base)
   base = priv->fw->init_evtlog_ptr;
 } else {
  if (!base)
   base = priv->fw->inst_evtlog_ptr;
 }

 if (mode == 0)
  event_size = 2 * sizeof(u32);
 else
  event_size = 3 * sizeof(u32);

 ptr = base + EVENT_START_OFFSET + (start_idx * event_size);


 if (!iwl_trans_grab_nic_access(trans, 0, &reg_flags))
  return pos;


 iwl_write32(trans, HBUS_TARG_MEM_RADDR, ptr);



 for (i = 0; i < num_events; i++) {
  ev = iwl_read32(trans, HBUS_TARG_MEM_RDAT);
  time = iwl_read32(trans, HBUS_TARG_MEM_RDAT);
  if (mode == 0) {

   if (bufsz) {
    pos += scnprintf(*buf + pos, bufsz - pos,
      "EVT_LOG:0x%08x:%04u\n",
      time, ev);
   } else {
    trace_iwlwifi_dev_ucode_event(trans->dev, 0,
     time, ev);
    IWL_ERR(priv, "EVT_LOG:0x%08x:%04u\n",
     time, ev);
   }
  } else {
   data = iwl_read32(trans, HBUS_TARG_MEM_RDAT);
   if (bufsz) {
    pos += scnprintf(*buf + pos, bufsz - pos,
      "EVT_LOGT:%010u:0x%08x:%04u\n",
       time, data, ev);
   } else {
    IWL_ERR(priv, "EVT_LOGT:%010u:0x%08x:%04u\n",
     time, data, ev);
    trace_iwlwifi_dev_ucode_event(trans->dev, time,
     data, ev);
   }
  }
 }


 iwl_trans_release_nic_access(trans, &reg_flags);
 return pos;
}
