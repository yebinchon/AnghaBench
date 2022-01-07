
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct validate_op {int both_list; int gart_list; int vram_list; } ;
struct nouveau_fence {int dummy; } ;


 int validate_fini_list (int *,struct nouveau_fence*) ;

__attribute__((used)) static void
validate_fini(struct validate_op *op, struct nouveau_fence* fence)
{
 validate_fini_list(&op->vram_list, fence);
 validate_fini_list(&op->gart_list, fence);
 validate_fini_list(&op->both_list, fence);
}
