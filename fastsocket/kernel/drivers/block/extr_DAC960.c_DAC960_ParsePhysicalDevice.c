
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long Channels; unsigned long Targets; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 unsigned long simple_strtoul (char*,char**,int) ;

__attribute__((used)) static bool DAC960_ParsePhysicalDevice(DAC960_Controller_T *Controller,
       char *UserCommandString,
       unsigned char *Channel,
       unsigned char *TargetID)
{
  char *NewUserCommandString = UserCommandString;
  unsigned long XChannel, XTargetID;
  while (*UserCommandString == ' ') UserCommandString++;
  if (UserCommandString == NewUserCommandString)
    return 0;
  XChannel = simple_strtoul(UserCommandString, &NewUserCommandString, 10);
  if (NewUserCommandString == UserCommandString ||
      *NewUserCommandString != ':' ||
      XChannel >= Controller->Channels)
    return 0;
  UserCommandString = ++NewUserCommandString;
  XTargetID = simple_strtoul(UserCommandString, &NewUserCommandString, 10);
  if (NewUserCommandString == UserCommandString ||
      *NewUserCommandString != '\0' ||
      XTargetID >= Controller->Targets)
    return 0;
  *Channel = XChannel;
  *TargetID = XTargetID;
  return 1;
}
