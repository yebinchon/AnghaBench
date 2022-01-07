
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_top_bmap {scalar_t__* dir; } ;
struct ehea_dir_bmap {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kzalloc (int,int ) ;

__attribute__((used)) static inline int ehea_init_top_bmap(struct ehea_top_bmap *ehea_top_bmap,
         int dir)
{
 if (!ehea_top_bmap->dir[dir]) {
  ehea_top_bmap->dir[dir] =
   kzalloc(sizeof(struct ehea_dir_bmap), GFP_KERNEL);
  if (!ehea_top_bmap->dir[dir])
   return -ENOMEM;
 }
 return 0;
}
