
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_end; } ;
struct videobuf_dma_contig_memory {scalar_t__ size; int is_userptr; unsigned long dma_handle; } ;
struct videobuf_buffer {scalar_t__ baddr; int size; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ PAGE_ALIGN (int ) ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 TYPE_1__* current ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,scalar_t__) ;
 int follow_pfn (struct vm_area_struct*,unsigned long,unsigned long*) ;
 int up_read (int *) ;

__attribute__((used)) static int videobuf_dma_contig_user_get(struct videobuf_dma_contig_memory *mem,
     struct videobuf_buffer *vb)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;
 unsigned long prev_pfn, this_pfn;
 unsigned long pages_done, user_address;
 int ret;

 mem->size = PAGE_ALIGN(vb->size);
 mem->is_userptr = 0;
 ret = -EINVAL;

 down_read(&mm->mmap_sem);

 vma = find_vma(mm, vb->baddr);
 if (!vma)
  goto out_up;

 if ((vb->baddr + mem->size) > vma->vm_end)
  goto out_up;

 pages_done = 0;
 prev_pfn = 0;
 user_address = vb->baddr;

 while (pages_done < (mem->size >> PAGE_SHIFT)) {
  ret = follow_pfn(vma, user_address, &this_pfn);
  if (ret)
   break;

  if (pages_done == 0)
   mem->dma_handle = this_pfn << PAGE_SHIFT;
  else if (this_pfn != (prev_pfn + 1))
   ret = -EFAULT;

  if (ret)
   break;

  prev_pfn = this_pfn;
  user_address += PAGE_SIZE;
  pages_done++;
 }

 if (!ret)
  mem->is_userptr = 1;

 out_up:
 up_read(&current->mm->mmap_sem);

 return ret;
}
