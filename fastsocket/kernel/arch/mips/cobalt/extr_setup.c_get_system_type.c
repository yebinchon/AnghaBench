
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cobalt_board_id ;

const char *get_system_type(void)
{
 switch (cobalt_board_id) {
  case 131:
   return "Cobalt Qube";
  case 129:
   return "Cobalt RaQ";
  case 130:
   return "Cobalt Qube2";
  case 128:
   return "Cobalt RaQ2";
 }
 return "MIPS Cobalt";
}
