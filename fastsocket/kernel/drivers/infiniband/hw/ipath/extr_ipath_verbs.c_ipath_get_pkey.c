
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {TYPE_1__** ipath_pd; } ;
struct TYPE_2__ {unsigned int* port_pkeys; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;

unsigned ipath_get_pkey(struct ipath_devdata *dd, unsigned index)
{
 unsigned ret;


 if (index >= ARRAY_SIZE(dd->ipath_pd[0]->port_pkeys))
  ret = 0;
 else
  ret = dd->ipath_pd[0]->port_pkeys[index];

 return ret;
}
