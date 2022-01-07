
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DAC960_Controller_T ;


 int DAC960_MaxLogicalDrives ;
 unsigned long simple_strtoul (char*,char**,int) ;

__attribute__((used)) static bool DAC960_ParseLogicalDrive(DAC960_Controller_T *Controller,
     char *UserCommandString,
     unsigned char *LogicalDriveNumber)
{
  char *NewUserCommandString = UserCommandString;
  unsigned long XLogicalDriveNumber;
  while (*UserCommandString == ' ') UserCommandString++;
  if (UserCommandString == NewUserCommandString)
    return 0;
  XLogicalDriveNumber =
    simple_strtoul(UserCommandString, &NewUserCommandString, 10);
  if (NewUserCommandString == UserCommandString ||
      *NewUserCommandString != '\0' ||
      XLogicalDriveNumber > DAC960_MaxLogicalDrives - 1)
    return 0;
  *LogicalDriveNumber = XLogicalDriveNumber;
  return 1;
}
