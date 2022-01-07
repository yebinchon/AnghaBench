
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwcm_id_private {int dummy; } ;


 int dealloc_work_entries (struct iwcm_id_private*) ;
 int kfree (struct iwcm_id_private*) ;

__attribute__((used)) static void free_cm_id(struct iwcm_id_private *cm_id_priv)
{
 dealloc_work_entries(cm_id_priv);
 kfree(cm_id_priv);
}
