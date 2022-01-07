
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct parport {int dummy; } ;
struct TYPE_3__ {scalar_t__ dev_state; struct parport* pport; } ;


 int W9966_MAXCAMS ;
 TYPE_1__* w9966_cams ;
 int w9966_term (TYPE_1__*) ;

__attribute__((used)) static void w9966_detach(struct parport *port)
{
 int i;
 for (i = 0; i < W9966_MAXCAMS; i++)
 if (w9966_cams[i].dev_state != 0 && w9966_cams[i].pport == port)
  w9966_term(&w9966_cams[i]);
}
