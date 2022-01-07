
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {int number; TYPE_1__* probe_info; } ;
struct TYPE_2__ {int * cmdset; int class; } ;


 int PARPORT_CLASS_MEDIA ;
 unsigned int PARPORT_MAX ;


 int cpia_pp_register (struct parport*) ;
 int* parport_nr ;
 int strncmp (int *,char*,int) ;

__attribute__((used)) static void cpia_pp_attach (struct parport *port)
{
 unsigned int i;

 switch (parport_nr[0])
 {
 case 128:
 case 129:
  if (port->probe_info[0].class != PARPORT_CLASS_MEDIA ||
      port->probe_info[0].cmdset == ((void*)0) ||
      strncmp(port->probe_info[0].cmdset, "CPIA_1", 6) != 0)
   return;

  cpia_pp_register(port);

  break;

 default:
  for (i = 0; i < PARPORT_MAX; ++i) {
   if (port->number == parport_nr[i]) {
    cpia_pp_register(port);
    break;
   }
  }
  break;
 }
}
