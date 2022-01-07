
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 int VCPU_SREG_ES ;
 unsigned long seg_base (struct x86_emulate_ctxt*,int ) ;

__attribute__((used)) static unsigned long es_base(struct x86_emulate_ctxt *ctxt)
{
 return seg_base(ctxt, VCPU_SREG_ES);
}
