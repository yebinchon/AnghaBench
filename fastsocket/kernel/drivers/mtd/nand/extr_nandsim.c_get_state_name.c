
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int NS_ERR (char*) ;
 int NS_STATE (int ) ;
__attribute__((used)) static char *get_state_name(uint32_t state)
{
 switch (NS_STATE(state)) {
  case 145:
   return "STATE_CMD_READ0";
  case 144:
   return "STATE_CMD_READ1";
  case 146:
   return "STATE_CMD_PAGEPROG";
  case 142:
   return "STATE_CMD_READOOB";
  case 141:
   return "STATE_CMD_READSTART";
  case 148:
   return "STATE_CMD_ERASE1";
  case 136:
   return "STATE_CMD_STATUS";
  case 135:
   return "STATE_CMD_STATUS_M";
  case 137:
   return "STATE_CMD_SEQIN";
  case 143:
   return "STATE_CMD_READID";
  case 147:
   return "STATE_CMD_ERASE2";
  case 140:
   return "STATE_CMD_RESET";
  case 139:
   return "STATE_CMD_RNDOUT";
  case 138:
   return "STATE_CMD_RNDOUTSTART";
  case 151:
   return "STATE_ADDR_PAGE";
  case 150:
   return "STATE_ADDR_SEC";
  case 149:
   return "STATE_ADDR_ZERO";
  case 152:
   return "STATE_ADDR_COLUMN";
  case 134:
   return "STATE_DATAIN";
  case 133:
   return "STATE_DATAOUT";
  case 132:
   return "STATE_DATAOUT_ID";
  case 131:
   return "STATE_DATAOUT_STATUS";
  case 130:
   return "STATE_DATAOUT_STATUS_M";
  case 129:
   return "STATE_READY";
  case 128:
   return "STATE_UNKNOWN";
 }

 NS_ERR("get_state_name: unknown state, BUG\n");
 return ((void*)0);
}
