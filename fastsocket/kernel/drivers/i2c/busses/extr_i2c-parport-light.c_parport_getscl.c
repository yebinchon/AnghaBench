
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int getscl; } ;


 TYPE_1__* adapter_parm ;
 int line_get (int *) ;
 size_t type ;

__attribute__((used)) static int parport_getscl(void *data)
{
 return line_get(&adapter_parm[type].getscl);
}
