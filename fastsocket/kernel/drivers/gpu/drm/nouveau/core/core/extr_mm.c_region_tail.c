
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nouveau_mm_node {scalar_t__ length; scalar_t__ offset; scalar_t__ type; int fl_entry; int nl_entry; } ;
struct nouveau_mm {int dummy; } ;


 int GFP_KERNEL ;
 struct nouveau_mm_node* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct nouveau_mm_node *
region_tail(struct nouveau_mm *mm, struct nouveau_mm_node *a, u32 size)
{
 struct nouveau_mm_node *b;

 if (a->length == size)
  return a;

 b = kmalloc(sizeof(*b), GFP_KERNEL);
 if (unlikely(b == ((void*)0)))
  return ((void*)0);

 a->length -= size;
 b->offset = a->offset + a->length;
 b->length = size;
 b->type = a->type;

 list_add(&b->nl_entry, &a->nl_entry);
 if (b->type == 0)
  list_add(&b->fl_entry, &a->fl_entry);
 return b;
}
