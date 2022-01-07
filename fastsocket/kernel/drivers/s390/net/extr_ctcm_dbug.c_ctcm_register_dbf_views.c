
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int level; int * id; int len; int areas; int pages; int name; } ;


 int CTCM_DBF_INFOS ;
 int ENOMEM ;
 TYPE_1__* ctcm_dbf ;
 int ctcm_unregister_dbf_views () ;
 int debug_hex_ascii_view ;
 int * debug_register (int ,int ,int ,int ) ;
 int debug_register_view (int *,int *) ;
 int debug_set_level (int *,int ) ;

int ctcm_register_dbf_views(void)
{
 int x;
 for (x = 0; x < CTCM_DBF_INFOS; x++) {

  ctcm_dbf[x].id = debug_register(ctcm_dbf[x].name,
      ctcm_dbf[x].pages,
      ctcm_dbf[x].areas,
      ctcm_dbf[x].len);
  if (ctcm_dbf[x].id == ((void*)0)) {
   ctcm_unregister_dbf_views();
   return -ENOMEM;
  }


  debug_register_view(ctcm_dbf[x].id, &debug_hex_ascii_view);

  debug_set_level(ctcm_dbf[x].id, ctcm_dbf[x].level);
 }

 return 0;
}
