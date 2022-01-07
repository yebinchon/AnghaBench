
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception {int hash_list; } ;


 int list_del (int *) ;

__attribute__((used)) static void dm_remove_exception(struct dm_exception *e)
{
 list_del(&e->hash_list);
}
