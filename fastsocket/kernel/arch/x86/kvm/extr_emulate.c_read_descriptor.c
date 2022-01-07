
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct x86_emulate_ops {int (* read_std ) (unsigned long,unsigned long*,int,int ,int *) ;} ;
struct x86_emulate_ctxt {int vcpu; } ;


 int X86EMUL_CONTINUE ;
 int stub1 (unsigned long,unsigned long*,int,int ,int *) ;
 int stub2 (unsigned long,unsigned long*,int,int ,int *) ;

__attribute__((used)) static int read_descriptor(struct x86_emulate_ctxt *ctxt,
      struct x86_emulate_ops *ops,
      void *ptr,
      u16 *size, unsigned long *address, int op_bytes)
{
 int rc;

 if (op_bytes == 2)
  op_bytes = 3;
 *address = 0;
 rc = ops->read_std((unsigned long)ptr, (unsigned long *)size, 2,
      ctxt->vcpu, ((void*)0));
 if (rc != X86EMUL_CONTINUE)
  return rc;
 rc = ops->read_std((unsigned long)ptr + 2, address, op_bytes,
      ctxt->vcpu, ((void*)0));
 return rc;
}
