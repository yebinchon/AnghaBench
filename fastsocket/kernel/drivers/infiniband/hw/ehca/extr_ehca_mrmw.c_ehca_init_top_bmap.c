
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_top_bmap {int * dir; } ;
struct ehca_dir_bmap {int dummy; } ;


 int EHCA_ENT_MAP_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ehca_bmap_valid (int ) ;
 int kmalloc (int,int ) ;
 int memset (int ,int,int ) ;

__attribute__((used)) static inline int ehca_init_top_bmap(struct ehca_top_bmap *ehca_top_bmap,
         int dir)
{
 if (!ehca_bmap_valid(ehca_top_bmap->dir[dir])) {
  ehca_top_bmap->dir[dir] =
   kmalloc(sizeof(struct ehca_dir_bmap), GFP_KERNEL);
  if (!ehca_top_bmap->dir[dir])
   return -ENOMEM;

  memset(ehca_top_bmap->dir[dir], 0xFF, EHCA_ENT_MAP_SIZE);
 }
 return 0;
}
