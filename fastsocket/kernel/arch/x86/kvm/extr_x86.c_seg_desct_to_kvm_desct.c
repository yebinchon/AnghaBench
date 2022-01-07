
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct kvm_segment {int limit; int unusable; scalar_t__ padding; int avl; scalar_t__ g; int l; int s; int db; int dpl; int present; int type; int selector; int base; } ;
struct desc_struct {int avl; scalar_t__ g; int l; int s; int d; int dpl; int p; int type; } ;


 int get_desc_base (struct desc_struct*) ;
 int get_desc_limit (struct desc_struct*) ;

__attribute__((used)) static void seg_desct_to_kvm_desct(struct desc_struct *seg_desc, u16 selector,
       struct kvm_segment *kvm_desct)
{
 kvm_desct->base = get_desc_base(seg_desc);
 kvm_desct->limit = get_desc_limit(seg_desc);
 if (seg_desc->g) {
  kvm_desct->limit <<= 12;
  kvm_desct->limit |= 0xfff;
 }
 kvm_desct->selector = selector;
 kvm_desct->type = seg_desc->type;
 kvm_desct->present = seg_desc->p;
 kvm_desct->dpl = seg_desc->dpl;
 kvm_desct->db = seg_desc->d;
 kvm_desct->s = seg_desc->s;
 kvm_desct->l = seg_desc->l;
 kvm_desct->g = seg_desc->g;
 kvm_desct->avl = seg_desc->avl;
 if (!selector)
  kvm_desct->unusable = 1;
 else
  kvm_desct->unusable = 0;
 kvm_desct->padding = 0;
}
