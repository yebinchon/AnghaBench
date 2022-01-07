
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;




__attribute__((used)) static u8 is_command_allowed_in_ps(u16 cmd)
{
 switch (cmd) {
 case 128:
  return 1;
 default:
  break;
 }
 return 0;
}
