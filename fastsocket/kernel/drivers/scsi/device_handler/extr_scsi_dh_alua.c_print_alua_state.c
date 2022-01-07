
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char print_alua_state(int state)
{
 switch (state) {
 case 131:
  return 'A';
 case 133:
  return 'N';
 case 130:
  return 'S';
 case 128:
  return 'U';
 case 134:
  return 'L';
 case 132:
  return 'O';
 case 129:
  return 'T';
 default:
  return 'X';
 }
}
