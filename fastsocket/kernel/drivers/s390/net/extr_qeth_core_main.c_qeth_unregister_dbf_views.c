
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * id; } ;


 int QETH_DBF_INFOS ;
 int debug_unregister (int *) ;
 TYPE_1__* qeth_dbf ;

__attribute__((used)) static void qeth_unregister_dbf_views(void)
{
 int x;
 for (x = 0; x < QETH_DBF_INFOS; x++) {
  debug_unregister(qeth_dbf[x].id);
  qeth_dbf[x].id = ((void*)0);
 }
}
