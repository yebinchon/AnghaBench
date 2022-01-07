
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wmi_cmd_id { ____Placeholder_wmi_cmd_id } wmi_cmd_id ;
__attribute__((used)) static const char *wmi_cmd_to_name(enum wmi_cmd_id wmi_cmd)
{
 switch (wmi_cmd) {
 case 150:
  return "WMI_ECHO_CMDID";
 case 156:
  return "WMI_ACCESS_MEMORY_CMDID";
 case 147:
  return "WMI_GET_FW_VERSION";
 case 153:
  return "WMI_DISABLE_INTR_CMDID";
 case 149:
  return "WMI_ENABLE_INTR_CMDID";
 case 155:
  return "WMI_ATH_INIT_CMDID";
 case 158:
  return "WMI_ABORT_TXQ_CMDID";
 case 134:
  return "WMI_STOP_TX_DMA_CMDID";
 case 157:
  return "WMI_ABORT_TX_DMA_CMDID";
 case 151:
  return "WMI_DRAIN_TXQ_CMDID";
 case 152:
  return "WMI_DRAIN_TXQ_ALL_CMDID";
 case 136:
  return "WMI_START_RECV_CMDID";
 case 135:
  return "WMI_STOP_RECV_CMDID";
 case 148:
  return "WMI_FLUSH_RECV_CMDID";
 case 137:
  return "WMI_SET_MODE_CMDID";
 case 145:
  return "WMI_NODE_CREATE_CMDID";
 case 144:
  return "WMI_NODE_REMOVE_CMDID";
 case 128:
  return "WMI_VAP_REMOVE_CMDID";
 case 129:
  return "WMI_VAP_CREATE_CMDID";
 case 140:
  return "WMI_REG_READ_CMDID";
 case 139:
  return "WMI_REG_WRITE_CMDID";
 case 141:
  return "WMI_RC_STATE_CHANGE_CMDID";
 case 142:
  return "WMI_RC_RATE_UPDATE_CMDID";
 case 133:
  return "WMI_TARGET_IC_UPDATE_CMDID";
 case 131:
  return "WMI_TX_AGGR_ENABLE_CMDID";
 case 132:
  return "WMI_TGT_DETACH_CMDID";
 case 143:
  return "WMI_NODE_UPDATE_CMDID";
 case 146:
  return "WMI_INT_STATS_CMDID";
 case 130:
  return "WMI_TX_STATS_CMDID";
 case 138:
  return "WMI_RX_STATS_CMDID";
 case 154:
  return "WMI_BITRATE_MASK_CMDID";
 }

 return "Bogus";
}
