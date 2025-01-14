
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int context; } ;


 int SUN3_INVALID_CONTEXT ;
 unsigned long SUN3_INVALID_PMEG ;
 struct mm_struct** ctx_alloc ;
 int ctx_avail ;
 int panic (char*) ;
 int* pmeg_alloc ;
 unsigned long* pmeg_ctx ;
 scalar_t__* pmeg_vaddr ;
 unsigned char sun3_get_context () ;
 int sun3_put_context (unsigned char) ;
 int sun3_put_segmap (scalar_t__,unsigned long) ;

void clear_context(unsigned long context)
{
     unsigned char oldctx;
     unsigned long i;

     if(context) {
      if(!ctx_alloc[context])
       panic("clear_context: context not allocated\n");

      ctx_alloc[context]->context = SUN3_INVALID_CONTEXT;
      ctx_alloc[context] = (struct mm_struct *)0;
      ctx_avail++;
     }

     oldctx = sun3_get_context();

     sun3_put_context(context);

     for(i = 0; i < SUN3_INVALID_PMEG; i++) {
      if((pmeg_ctx[i] == context) && (pmeg_alloc[i] == 1)) {
       sun3_put_segmap(pmeg_vaddr[i], SUN3_INVALID_PMEG);
       pmeg_ctx[i] = 0;
       pmeg_alloc[i] = 0;
       pmeg_vaddr[i] = 0;
      }
     }

     sun3_put_context(oldctx);
}
