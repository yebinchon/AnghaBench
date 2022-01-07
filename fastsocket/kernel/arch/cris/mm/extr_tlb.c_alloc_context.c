
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t page_id; } ;
struct mm_struct {TYPE_1__ context; } ;


 int D (int ) ;
 size_t INVALID_PAGEID ;
 size_t NO_CONTEXT ;
 int flush_tlb_mm (struct mm_struct*) ;
 size_t map_replace_ptr ;
 struct mm_struct** page_id_map ;
 int printk (char*,size_t,struct mm_struct*) ;

__attribute__((used)) static inline void
alloc_context(struct mm_struct *mm)
{
 struct mm_struct *old_mm;

 D(printk("tlb: alloc context %d (%p)\n", map_replace_ptr, mm));



 old_mm = page_id_map[map_replace_ptr];

 if(old_mm) {



  flush_tlb_mm(old_mm);

  old_mm->context.page_id = NO_CONTEXT;
 }



 mm->context.page_id = map_replace_ptr;
 page_id_map[map_replace_ptr] = mm;

 map_replace_ptr++;

 if(map_replace_ptr == INVALID_PAGEID)
  map_replace_ptr = 0;
}
