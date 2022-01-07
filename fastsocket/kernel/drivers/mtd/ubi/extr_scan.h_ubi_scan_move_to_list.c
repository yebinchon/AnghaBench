
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_scan_volume {int root; } ;
struct TYPE_2__ {int list; int rb; } ;
struct ubi_scan_leb {TYPE_1__ u; } ;
struct list_head {int dummy; } ;


 int list_add_tail (int *,struct list_head*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static inline void ubi_scan_move_to_list(struct ubi_scan_volume *sv,
      struct ubi_scan_leb *seb,
      struct list_head *list)
{
  rb_erase(&seb->u.rb, &sv->root);
  list_add_tail(&seb->u.list, list);
}
