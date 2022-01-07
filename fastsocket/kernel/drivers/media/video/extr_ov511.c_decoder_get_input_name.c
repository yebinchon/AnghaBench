
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; } ;


 int EINVAL ;

 int sprintf (char*,char*,...) ;

__attribute__((used)) static int
decoder_get_input_name(struct usb_ov511 *ov, int input, char *name)
{
 switch (ov->sensor) {
 case 128:
 {
  if (input < 0 || input > 7)
   return -EINVAL;
  else if (input < 4)
   sprintf(name, "CVBS-%d", input);
  else
   sprintf(name, "S-Video-%d", input - 4);
  break;
 }
 default:
  sprintf(name, "%s", "Camera");
 }

 return 0;
}
