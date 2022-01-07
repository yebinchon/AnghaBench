
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int * table; scalar_t__ nentry; scalar_t__ offset_max; int offsets; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void table_init(struct table *t)
{
 INIT_LIST_HEAD(&t->offsets);
 t->offset_max = 0;
 t->nentry = 0;
 t->table = ((void*)0);
}
