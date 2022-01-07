
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nouveau_mm_node {scalar_t__ length; scalar_t__ type; int fl_entry; int nl_entry; int offset; } ;
struct nouveau_mm {int dummy; } ;


 int GFP_KERNEL ;
 struct nouveau_mm_node* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct nouveau_mm_node *
region_head(struct nouveau_mm *mm, struct nouveau_mm_node *a, u32 size)
{
 struct nouveau_mm_node *b;

 if (a->length == size)
  return a;

 b = kmalloc(sizeof(*b), GFP_KERNEL);
 if (unlikely(b == ((void*)0)))
  return ((void*)0);

 b->offset = a->offset;
 b->length = size;
 b->type = a->type;
 a->offset += size;
 a->length -= size;
 list_add_tail(&b->nl_entry, &a->nl_entry);
 if (b->type == 0)
  list_add_tail(&b->fl_entry, &a->fl_entry);
 return b;
}
