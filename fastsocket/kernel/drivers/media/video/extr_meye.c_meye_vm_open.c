
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_private_data; } ;
struct TYPE_2__ {int * vma_use_count; } ;


 TYPE_1__ meye ;

__attribute__((used)) static void meye_vm_open(struct vm_area_struct *vma)
{
 long idx = (long)vma->vm_private_data;
 meye.vma_use_count[idx]++;
}
