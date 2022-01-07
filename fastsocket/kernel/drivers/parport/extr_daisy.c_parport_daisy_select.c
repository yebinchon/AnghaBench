
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;
 int PARPORT_STATUS_ERROR ;
 int cpp_daisy (struct parport*,int) ;

int parport_daisy_select(struct parport *port, int daisy, int mode)
{
 switch (mode)
 {

  case 131:
  case 130:
  case 129:
   return !(cpp_daisy(port, 0x20 + daisy) &
     PARPORT_STATUS_ERROR);


  case 134:
  case 133:
  case 132:
   return !(cpp_daisy(port, 0xd0 + daisy) &
     PARPORT_STATUS_ERROR);



  case 137:

  case 128:
  case 136:
  case 135:
  default:
   return !(cpp_daisy(port, 0xe0 + daisy) &
     PARPORT_STATUS_ERROR);
 }
}
