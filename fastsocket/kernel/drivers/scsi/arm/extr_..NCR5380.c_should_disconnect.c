
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISCONNECT_LONG ;
 int DISCONNECT_NONE ;
 int DISCONNECT_TIME_TO_DATA ;
__attribute__((used)) static int should_disconnect(unsigned char cmd)
{
 switch (cmd) {
 case 135:
 case 128:
 case 130:
 case 136:
 case 129:
 case 131:
  return DISCONNECT_TIME_TO_DATA;
 case 137:
 case 133:
 case 132:
 case 134:
  return DISCONNECT_LONG;
 default:
  return DISCONNECT_NONE;
 }
}
