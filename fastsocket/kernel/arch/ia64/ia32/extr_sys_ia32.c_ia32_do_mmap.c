
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {TYPE_1__* f_op; } ;
typedef int loff_t ;
struct TYPE_6__ {TYPE_2__* mm; } ;
struct TYPE_5__ {int mmap_sem; } ;
struct TYPE_4__ {int mmap; } ;


 int DBG (char*,...) ;
 unsigned long EINVAL ;
 unsigned long ENODEV ;
 unsigned long ENOMEM ;
 unsigned long IA32_PAGE_ALIGN (unsigned long) ;
 unsigned long IA32_PAGE_OFFSET ;
 int MAP_FIXED ;
 int MAP_HUGETLB ;
 scalar_t__ OFFSET4K (int ) ;
 TYPE_3__* current ;
 unsigned long do_mmap (struct file*,unsigned long,unsigned long,int,int,int ) ;
 int down_write (int *) ;
 unsigned long emulate_mmap (struct file*,unsigned long,unsigned long,int,int,int ) ;
 int get_prot32 (int) ;
 int ia32_mmap_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up_write (int *) ;

unsigned long
ia32_do_mmap (struct file *file, unsigned long addr, unsigned long len, int prot, int flags,
       loff_t offset)
{
 DBG("ia32_do_mmap(file=%p,addr=0x%lx,len=0x%lx,prot=%x,flags=%x,offset=0x%llx)\n",
     file, addr, len, prot, flags, offset);

 if (file && (!file->f_op || !file->f_op->mmap))
  return -ENODEV;

 len = IA32_PAGE_ALIGN(len);
 if (len == 0)
  return addr;

 if (len > IA32_PAGE_OFFSET || addr > IA32_PAGE_OFFSET - len)
 {
  if (flags & MAP_FIXED)
   return -ENOMEM;
  else
  return -EINVAL;
 }

 if (OFFSET4K(offset))
  return -EINVAL;

 prot = get_prot32(prot);

 if (flags & MAP_HUGETLB)
  return -ENOMEM;
 down_write(&current->mm->mmap_sem);
 {
  addr = do_mmap(file, addr, len, prot, flags, offset);
 }
 up_write(&current->mm->mmap_sem);

 DBG("ia32_do_mmap: returning 0x%lx\n", addr);
 return addr;
}
