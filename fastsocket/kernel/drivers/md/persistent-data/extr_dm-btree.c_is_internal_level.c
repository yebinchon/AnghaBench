
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int level; } ;
struct dm_btree_info {int levels; } ;



__attribute__((used)) static bool is_internal_level(struct dm_btree_info *info, struct frame *f)
{
 return f->level < (info->levels - 1);
}
