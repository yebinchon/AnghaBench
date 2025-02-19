
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_fault {struct page* page; scalar_t__ virtual_address; } ;
struct vm_area_struct {unsigned long vm_start; struct drm_local_map* vm_private_data; } ;
struct page {int dummy; } ;
struct drm_local_map {scalar_t__ handle; } ;


 int DRM_DEBUG (char*,unsigned long) ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 struct page* vmalloc_to_page (void*) ;

__attribute__((used)) static int drm_do_vm_shm_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct drm_local_map *map = vma->vm_private_data;
 unsigned long offset;
 unsigned long i;
 struct page *page;

 if (!map)
  return VM_FAULT_SIGBUS;

 offset = (unsigned long)vmf->virtual_address - vma->vm_start;
 i = (unsigned long)map->handle + offset;
 page = vmalloc_to_page((void *)i);
 if (!page)
  return VM_FAULT_SIGBUS;
 get_page(page);
 vmf->page = page;

 DRM_DEBUG("shm_fault 0x%lx\n", offset);
 return 0;
}
