
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *get_storage_status_caption(const int status)
{
 switch (status)
 {
  case 134:
   return "INIT";
  case 128:
   return "WAIT_SYNC";
  case 129:
   return "SYNCING";
  case 132:
   return "OFFLINE";
  case 131:
   return "ONLINE";
  case 135:
   return "DELETED";
  case 133:
   return "IP_CHANGED";
  case 136:
   return "ACTIVE";
  case 130:
   return "RECOVERY";
  default:
   return "UNKOWN";
 }
}
