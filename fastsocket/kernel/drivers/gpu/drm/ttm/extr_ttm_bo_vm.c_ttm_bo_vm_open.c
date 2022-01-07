
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_private_data; } ;
struct ttm_buffer_object {int dummy; } ;


 int ttm_bo_reference (struct ttm_buffer_object*) ;

__attribute__((used)) static void ttm_bo_vm_open(struct vm_area_struct *vma)
{
 struct ttm_buffer_object *bo =
     (struct ttm_buffer_object *)vma->vm_private_data;

 (void)ttm_bo_reference(bo);
}
