
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_map_list {int list; } ;


 int list_add_tail (int *,int *) ;
 int rc_map_list ;
 int rc_map_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int rc_map_register(struct rc_map_list *map)
{
 spin_lock(&rc_map_lock);
 list_add_tail(&map->list, &rc_map_list);
 spin_unlock(&rc_map_lock);
 return 0;
}
