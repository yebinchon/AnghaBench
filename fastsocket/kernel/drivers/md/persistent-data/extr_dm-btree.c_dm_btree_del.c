
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct frame {scalar_t__ current_child; scalar_t__ nr_children; TYPE_3__* n; scalar_t__ level; } ;
struct TYPE_6__ {int context; int (* dec ) (int ,int ) ;} ;
struct dm_btree_info {TYPE_2__ value_type; int tm; } ;
struct del_stack {int top; int tm; struct dm_btree_info* info; } ;
typedef int dm_block_t ;
struct TYPE_5__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ header; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INTERNAL_NODE ;
 scalar_t__ is_internal_level (struct dm_btree_info*,struct frame*) ;
 int kfree (struct del_stack*) ;
 struct del_stack* kmalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int pop_frame (struct del_stack*) ;
 int push_frame (struct del_stack*,int ,scalar_t__) ;
 int stub1 (int ,int ) ;
 int top_frame (struct del_stack*,struct frame**) ;
 scalar_t__ unprocessed_frames (struct del_stack*) ;
 int value64 (TYPE_3__*,scalar_t__) ;
 int value_ptr (TYPE_3__*,unsigned int) ;

int dm_btree_del(struct dm_btree_info *info, dm_block_t root)
{
 int r;
 struct del_stack *s;

 s = kmalloc(sizeof(*s), GFP_KERNEL);
 if (!s)
  return -ENOMEM;
 s->info = info;
 s->tm = info->tm;
 s->top = -1;

 r = push_frame(s, root, 0);
 if (r)
  goto out;

 while (unprocessed_frames(s)) {
  uint32_t flags;
  struct frame *f;
  dm_block_t b;

  r = top_frame(s, &f);
  if (r)
   goto out;

  if (f->current_child >= f->nr_children) {
   pop_frame(s);
   continue;
  }

  flags = le32_to_cpu(f->n->header.flags);
  if (flags & INTERNAL_NODE) {
   b = value64(f->n, f->current_child);
   f->current_child++;
   r = push_frame(s, b, f->level);
   if (r)
    goto out;

  } else if (is_internal_level(info, f)) {
   b = value64(f->n, f->current_child);
   f->current_child++;
   r = push_frame(s, b, f->level + 1);
   if (r)
    goto out;

  } else {
   if (info->value_type.dec) {
    unsigned i;

    for (i = 0; i < f->nr_children; i++)
     info->value_type.dec(info->value_type.context,
            value_ptr(f->n, i));
   }
   pop_frame(s);
  }
 }

out:
 kfree(s);
 return r;
}
