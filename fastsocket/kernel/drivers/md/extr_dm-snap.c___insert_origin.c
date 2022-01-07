
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct origin {int hash_list; int bdev; } ;
struct list_head {int dummy; } ;


 struct list_head* _origins ;
 int list_add_tail (int *,struct list_head*) ;
 size_t origin_hash (int ) ;

__attribute__((used)) static void __insert_origin(struct origin *o)
{
 struct list_head *sl = &_origins[origin_hash(o->bdev)];
 list_add_tail(&o->hash_list, sl);
}
