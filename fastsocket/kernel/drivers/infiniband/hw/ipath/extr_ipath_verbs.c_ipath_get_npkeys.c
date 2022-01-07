
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {TYPE_1__** ipath_pd; } ;
struct TYPE_2__ {int port_pkeys; } ;


 int ARRAY_SIZE (int ) ;

unsigned ipath_get_npkeys(struct ipath_devdata *dd)
{
 return ARRAY_SIZE(dd->ipath_pd[0]->port_pkeys);
}
