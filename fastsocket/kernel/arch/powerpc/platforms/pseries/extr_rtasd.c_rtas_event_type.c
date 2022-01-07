
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** rtas_type ;

__attribute__((used)) static char *rtas_event_type(int type)
{
 if ((type > 0) && (type < 11))
  return rtas_type[type];

 switch (type) {
  case 131:
   return "EPOW";
  case 128:
   return "Platform Error";
  case 129:
   return "I/O Event";
  case 130:
   return "Platform Information Event";
  case 133:
   return "Resource Deallocation Event";
  case 132:
   return "Dump Notification Event";
 }

 return rtas_type[0];
}
