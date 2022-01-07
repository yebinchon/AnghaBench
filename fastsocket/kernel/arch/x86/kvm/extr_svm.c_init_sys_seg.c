
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmcb_seg {int attrib; int limit; scalar_t__ base; scalar_t__ selector; } ;


 int SVM_SELECTOR_P_MASK ;

__attribute__((used)) static void init_sys_seg(struct vmcb_seg *seg, uint32_t type)
{
 seg->selector = 0;
 seg->attrib = SVM_SELECTOR_P_MASK | type;
 seg->limit = 0xffff;
 seg->base = 0;
}
