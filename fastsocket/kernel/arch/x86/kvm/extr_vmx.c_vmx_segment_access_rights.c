
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_segment {int type; int s; int dpl; int present; int avl; int l; int db; int g; scalar_t__ unusable; } ;


 int AR_UNUSABLE_MASK ;

__attribute__((used)) static u32 vmx_segment_access_rights(struct kvm_segment *var)
{
 u32 ar;

 if (var->unusable)
  ar = 1 << 16;
 else {
  ar = var->type & 15;
  ar |= (var->s & 1) << 4;
  ar |= (var->dpl & 3) << 5;
  ar |= (var->present & 1) << 7;
  ar |= (var->avl & 1) << 12;
  ar |= (var->l & 1) << 13;
  ar |= (var->db & 1) << 14;
  ar |= (var->g & 1) << 15;
 }
 if (ar == 0)
  ar = AR_UNUSABLE_MASK;

 return ar;
}
