
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u32 ;
struct vm_area_struct {int vm_flags; unsigned long vm_pgoff; unsigned long vm_start; } ;
struct page {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_3__ {struct mm_struct* mm; } ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_OFFSET ;
 unsigned long PAGE_SHIFT ;
 int VM_IO ;
 unsigned long __pa (scalar_t__) ;
 TYPE_1__* current ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int get_user_pages (TYPE_1__*,struct mm_struct*,unsigned long,int,int,int ,struct page**,int *) ;
 scalar_t__ page_address (struct page*) ;
 int up_read (int *) ;
 unsigned long virt_to_phys (void*) ;
 int vpif_err (char*) ;

__attribute__((used)) static u32 vpif_uservirt_to_phys(u32 virtp)
{
 struct mm_struct *mm = current->mm;
 unsigned long physp = 0;
 struct vm_area_struct *vma;

 vma = find_vma(mm, virtp);


 if (virtp >= PAGE_OFFSET) {
  physp = virt_to_phys((void *)virtp);
 } else if (vma && (vma->vm_flags & VM_IO) && (vma->vm_pgoff)) {

  physp = (vma->vm_pgoff << PAGE_SHIFT) + (virtp - vma->vm_start);
 } else {

  int res, nr_pages = 1;
  struct page *pages;
  down_read(&current->mm->mmap_sem);

  res = get_user_pages(current, current->mm,
         virtp, nr_pages, 1, 0, &pages, ((void*)0));
  up_read(&current->mm->mmap_sem);

  if (res == nr_pages) {
   physp = __pa(page_address(&pages[0]) +
       (virtp & ~PAGE_MASK));
  } else {
   vpif_err("get_user_pages failed\n");
   return 0;
  }
 }

 return physp;
}
