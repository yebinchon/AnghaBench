
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcb_seg {int limit; int attrib; int selector; int base; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int limit; int type; int s; int dpl; int present; int avl; int l; int db; int g; int unusable; int selector; int base; } ;


 int SVM_SELECTOR_AVL_SHIFT ;
 int SVM_SELECTOR_DB_SHIFT ;
 int SVM_SELECTOR_DPL_SHIFT ;
 int SVM_SELECTOR_G_SHIFT ;
 int SVM_SELECTOR_L_SHIFT ;
 int SVM_SELECTOR_P_SHIFT ;
 int SVM_SELECTOR_S_SHIFT ;
 int SVM_SELECTOR_TYPE_MASK ;







 struct vmcb_seg* svm_seg (struct kvm_vcpu*,int) ;

__attribute__((used)) static void svm_get_segment(struct kvm_vcpu *vcpu,
       struct kvm_segment *var, int seg)
{
 struct vmcb_seg *s = svm_seg(vcpu, seg);

 var->base = s->base;
 var->limit = s->limit;
 var->selector = s->selector;
 var->type = s->attrib & SVM_SELECTOR_TYPE_MASK;
 var->s = (s->attrib >> SVM_SELECTOR_S_SHIFT) & 1;
 var->dpl = (s->attrib >> SVM_SELECTOR_DPL_SHIFT) & 3;
 var->present = (s->attrib >> SVM_SELECTOR_P_SHIFT) & 1;
 var->avl = (s->attrib >> SVM_SELECTOR_AVL_SHIFT) & 1;
 var->l = (s->attrib >> SVM_SELECTOR_L_SHIFT) & 1;
 var->db = (s->attrib >> SVM_SELECTOR_DB_SHIFT) & 1;
 var->g = (s->attrib >> SVM_SELECTOR_G_SHIFT) & 1;




 var->unusable = !var->present || (var->type == 0);

 switch (seg) {
 case 134:





  var->g = s->limit > 0xfffff;
  break;
 case 128:




  var->type |= 0x2;
  break;
 case 133:
 case 132:
 case 131:
 case 130:







  if (!var->unusable)
   var->type |= 0x1;
  break;
 case 129:





  if (var->unusable)
   var->db = 0;
  break;
 }
}
