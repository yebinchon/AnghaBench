
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct ipath_mmap_info* vm_private_data; } ;
struct ipath_mmap_info {int ref; } ;


 int ipath_release_mmap_info ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void ipath_vma_close(struct vm_area_struct *vma)
{
 struct ipath_mmap_info *ip = vma->vm_private_data;

 kref_put(&ip->ref, ipath_release_mmap_info);
}
