
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int NS_ERR (char*) ;
 int STATE_CMD_ERASE1 ;
 int STATE_CMD_ERASE2 ;
 int STATE_CMD_PAGEPROG ;
 int STATE_CMD_READ0 ;
 int STATE_CMD_READ1 ;
 int STATE_CMD_READID ;
 int STATE_CMD_READOOB ;
 int STATE_CMD_READSTART ;
 int STATE_CMD_RESET ;
 int STATE_CMD_RNDOUT ;
 int STATE_CMD_RNDOUTSTART ;
 int STATE_CMD_SEQIN ;
 int STATE_CMD_STATUS ;
 int STATE_CMD_STATUS_M ;

__attribute__((used)) static uint32_t get_state_by_command(unsigned command)
{
 switch (command) {
  case 138:
   return STATE_CMD_READ0;
  case 137:
   return STATE_CMD_READ1;
  case 139:
   return STATE_CMD_PAGEPROG;
  case 134:
   return STATE_CMD_READSTART;
  case 135:
   return STATE_CMD_READOOB;
  case 141:
   return STATE_CMD_ERASE1;
  case 129:
   return STATE_CMD_STATUS;
  case 128:
   return STATE_CMD_STATUS_M;
  case 130:
   return STATE_CMD_SEQIN;
  case 136:
   return STATE_CMD_READID;
  case 140:
   return STATE_CMD_ERASE2;
  case 133:
   return STATE_CMD_RESET;
  case 132:
   return STATE_CMD_RNDOUT;
  case 131:
   return STATE_CMD_RNDOUTSTART;
 }

 NS_ERR("get_state_by_command: unknown command, BUG\n");
 return 0;
}
