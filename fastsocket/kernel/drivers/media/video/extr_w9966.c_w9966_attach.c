
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct parport {char* name; } ;
struct TYPE_4__ {scalar_t__ dev_state; } ;


 int W9966_MAXCAMS ;
 int * pardev ;
 scalar_t__ strcmp (int ,char*) ;
 TYPE_1__* w9966_cams ;
 scalar_t__ w9966_init (TYPE_1__*,struct parport*) ;
 int w9966_term (TYPE_1__*) ;

__attribute__((used)) static void w9966_attach(struct parport *port)
{
 int i;

 for (i = 0; i < W9966_MAXCAMS; i++)
 {
  if (w9966_cams[i].dev_state != 0)
   continue;
  if (
   strcmp(pardev[i], "aggressive") == 0 ||
   strcmp(pardev[i], port->name) == 0
  ) {
   if (w9966_init(&w9966_cams[i], port) != 0)
   w9966_term(&w9966_cams[i]);
   break;
  }
 }
}
