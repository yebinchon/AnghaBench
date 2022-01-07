
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void get_flash_status_msg(int status, char *buf)
{
 char *msg;

 switch (status) {
 case 133:
  msg = "error: this partition does not have service authority\n";
  break;
 case 128:
  msg = "info: no firmware image for flash\n";
  break;
 case 129:
  msg = "error: flash image short\n";
  break;
 case 132:
  msg = "error: internal error bad length\n";
  break;
 case 131:
  msg = "error: internal error null data\n";
  break;
 case 130:
  msg = "ready: firmware image ready for flash on reboot\n";
  break;
 default:
  sprintf(buf, "error: unexpected status value %d\n", status);
  return;
 }

 strcpy(buf, msg);
}
