
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {int dummy; } ;
struct TYPE_2__ {int setscl; } ;


 TYPE_1__* adapter_parm ;
 int line_set (struct parport*,int,int *) ;
 size_t type ;

__attribute__((used)) static void parport_setscl(void *data, int state)
{
 line_set((struct parport *) data, state, &adapter_parm[type].setscl);
}
