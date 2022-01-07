
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; int id_link; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef TYPE_1__ mm_context_t ;


 int __flush_tlb_mm (int) ;
 int clear_bit (int,int ) ;
 int cxn_bitmap ;
 int cxn_owners_lock ;
 int cxn_pinned ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void destroy_context(struct mm_struct *mm)
{
 mm_context_t *ctx = &mm->context;

 spin_lock(&cxn_owners_lock);

 if (!list_empty(&ctx->id_link)) {
  if (ctx->id == cxn_pinned)
   cxn_pinned = -1;

  list_del_init(&ctx->id_link);
  clear_bit(ctx->id, cxn_bitmap);
  __flush_tlb_mm(ctx->id);
  ctx->id = 0;
 }

 spin_unlock(&cxn_owners_lock);
}
