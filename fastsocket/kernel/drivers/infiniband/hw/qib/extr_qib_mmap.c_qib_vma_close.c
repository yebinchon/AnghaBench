
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct qib_mmap_info* vm_private_data; } ;
struct qib_mmap_info {int ref; } ;


 int kref_put (int *,int ) ;
 int qib_release_mmap_info ;

__attribute__((used)) static void qib_vma_close(struct vm_area_struct *vma)
{
 struct qib_mmap_info *ip = vma->vm_private_data;

 kref_put(&ip->ref, qib_release_mmap_info);
}
