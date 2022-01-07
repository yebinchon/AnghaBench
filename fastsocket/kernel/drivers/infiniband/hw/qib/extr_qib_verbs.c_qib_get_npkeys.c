
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {TYPE_1__** rcd; } ;
struct TYPE_2__ {int pkeys; } ;


 int ARRAY_SIZE (int ) ;

unsigned qib_get_npkeys(struct qib_devdata *dd)
{
 return ARRAY_SIZE(dd->rcd[0]->pkeys);
}
