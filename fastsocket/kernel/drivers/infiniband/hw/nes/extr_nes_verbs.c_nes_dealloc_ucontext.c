
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_ucontext {int usecnt; } ;
struct ib_ucontext {int dummy; } ;


 int atomic_dec_and_test (int *) ;
 int kfree (struct nes_ucontext*) ;
 struct nes_ucontext* to_nesucontext (struct ib_ucontext*) ;

__attribute__((used)) static int nes_dealloc_ucontext(struct ib_ucontext *context)
{


 struct nes_ucontext *nes_ucontext = to_nesucontext(context);

 if (!atomic_dec_and_test(&nes_ucontext->usecnt))
   return 0;
 kfree(nes_ucontext);
 return 0;
}
