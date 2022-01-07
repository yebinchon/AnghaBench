
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_top_bmap {int dummy; } ;
struct ehca_bmap {int * top; } ;


 int EHCA_DIR_MAP_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ehca_bmap_valid (int ) ;
 int ehca_init_top_bmap (int ,int) ;
 int kmalloc (int,int ) ;
 int memset (int ,int,int ) ;

__attribute__((used)) static inline int ehca_init_bmap(struct ehca_bmap *ehca_bmap, int top, int dir)
{
 if (!ehca_bmap_valid(ehca_bmap->top[top])) {
  ehca_bmap->top[top] =
   kmalloc(sizeof(struct ehca_top_bmap), GFP_KERNEL);
  if (!ehca_bmap->top[top])
   return -ENOMEM;

  memset(ehca_bmap->top[top], 0xFF, EHCA_DIR_MAP_SIZE);
 }
 return ehca_init_top_bmap(ehca_bmap->top[top], dir);
}
