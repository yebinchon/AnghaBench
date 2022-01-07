
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int level; int * id; int view; int len; int areas; int pages; int name; } ;


 int ENOMEM ;
 int QETH_DBF_INFOS ;
 int * debug_register (int ,int ,int ,int ) ;
 int debug_register_view (int *,int ) ;
 int debug_set_level (int *,int ) ;
 TYPE_1__* qeth_dbf ;
 int qeth_unregister_dbf_views () ;

__attribute__((used)) static int qeth_register_dbf_views(void)
{
 int ret;
 int x;

 for (x = 0; x < QETH_DBF_INFOS; x++) {

  qeth_dbf[x].id = debug_register(qeth_dbf[x].name,
      qeth_dbf[x].pages,
      qeth_dbf[x].areas,
      qeth_dbf[x].len);
  if (qeth_dbf[x].id == ((void*)0)) {
   qeth_unregister_dbf_views();
   return -ENOMEM;
  }


  ret = debug_register_view(qeth_dbf[x].id, qeth_dbf[x].view);
  if (ret) {
   qeth_unregister_dbf_views();
   return ret;
  }


  debug_set_level(qeth_dbf[x].id, qeth_dbf[x].level);
 }

 return 0;
}
