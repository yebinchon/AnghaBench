
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int request_module (char*) ;

int sms_board_load_modules(int id)
{
 switch (id) {
 case 133:
 case 132:
 case 131:
 case 128:
 case 130:
 case 129:
  request_module("smsdvb");
  break;
 default:

  break;
 }
 return 0;
}
