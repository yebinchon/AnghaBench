
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attribute_container {int node; int containers; } ;


 int INIT_LIST_HEAD (int *) ;
 int attribute_container_list ;
 int attribute_container_mutex ;
 int internal_container_klist_get ;
 int internal_container_klist_put ;
 int klist_init (int *,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
attribute_container_register(struct attribute_container *cont)
{
 INIT_LIST_HEAD(&cont->node);
 klist_init(&cont->containers,internal_container_klist_get,
     internal_container_klist_put);

 mutex_lock(&attribute_container_mutex);
 list_add_tail(&cont->node, &attribute_container_list);
 mutex_unlock(&attribute_container_mutex);

 return 0;
}
