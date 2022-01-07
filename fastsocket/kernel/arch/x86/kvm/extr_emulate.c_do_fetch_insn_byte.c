
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct x86_emulate_ops {int (* fetch ) (unsigned long,int *,int,int ,int *) ;} ;
struct fetch_cache {unsigned long start; unsigned long end; int * data; } ;
struct TYPE_2__ {struct fetch_cache fetch; } ;
struct x86_emulate_ctxt {int vcpu; TYPE_1__ decode; } ;


 scalar_t__ PAGE_SIZE ;
 int X86EMUL_CONTINUE ;
 int min (unsigned long,scalar_t__) ;
 scalar_t__ offset_in_page (unsigned long) ;
 int stub1 (unsigned long,int *,int,int ,int *) ;

__attribute__((used)) static int do_fetch_insn_byte(struct x86_emulate_ctxt *ctxt,
         struct x86_emulate_ops *ops,
         unsigned long linear, u8 *dest)
{
 struct fetch_cache *fc = &ctxt->decode.fetch;
 int rc;
 int size;

 if (linear < fc->start || linear >= fc->end) {
  size = min(15UL, PAGE_SIZE - offset_in_page(linear));
  rc = ops->fetch(linear, fc->data, size, ctxt->vcpu, ((void*)0));
  if (rc != X86EMUL_CONTINUE)
   return rc;
  fc->start = linear;
  fc->end = linear + size;
 }
 *dest = fc->data[linear - fc->start];
 return X86EMUL_CONTINUE;
}
