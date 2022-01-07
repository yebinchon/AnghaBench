
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {TYPE_1__* f_op; } ;
struct elfhdr {scalar_t__ e_type; int e_phnum; int e_phoff; int e_ident; } ;
struct elf_phdr {scalar_t__ p_type; int p_vaddr; unsigned long p_filesz; unsigned long p_memsz; scalar_t__ p_offset; } ;
typedef int elf_ex ;
struct TYPE_6__ {TYPE_2__* mm; } ;
struct TYPE_5__ {int mmap_sem; } ;
struct TYPE_4__ {int mmap; } ;


 int EFAULT ;
 int ELFMAG ;
 int ELF_MIN_ALIGN ;
 scalar_t__ ELF_PAGEOFFSET (int) ;
 int ELF_PAGESTART (int) ;
 int ENOEXEC ;
 int ENOMEM ;
 scalar_t__ ET_EXEC ;
 int GFP_KERNEL ;
 int MAP_DENYWRITE ;
 int MAP_FIXED ;
 int MAP_PRIVATE ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ PT_LOAD ;
 int SELFMAG ;
 TYPE_3__* current ;
 int do_brk (unsigned long,unsigned long) ;
 int do_mmap (struct file*,int,scalar_t__,int,int,scalar_t__) ;
 int down_write (int *) ;
 int elf_check_arch (struct elfhdr*) ;
 int kernel_read (struct file*,int ,char*,int) ;
 int kfree (struct elf_phdr*) ;
 struct elf_phdr* kmalloc (int,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 scalar_t__ padzero (unsigned long) ;
 int up_write (int *) ;

__attribute__((used)) static int load_elf_library(struct file *file)
{
 struct elf_phdr *elf_phdata;
 struct elf_phdr *eppnt;
 unsigned long elf_bss, bss, len;
 int retval, error, i, j;
 struct elfhdr elf_ex;

 error = -ENOEXEC;
 retval = kernel_read(file, 0, (char *)&elf_ex, sizeof(elf_ex));
 if (retval != sizeof(elf_ex))
  goto out;

 if (memcmp(elf_ex.e_ident, ELFMAG, SELFMAG) != 0)
  goto out;


 if (elf_ex.e_type != ET_EXEC || elf_ex.e_phnum > 2 ||
     !elf_check_arch(&elf_ex) || !file->f_op || !file->f_op->mmap)
  goto out;



 j = sizeof(struct elf_phdr) * elf_ex.e_phnum;


 error = -ENOMEM;
 elf_phdata = kmalloc(j, GFP_KERNEL);
 if (!elf_phdata)
  goto out;

 eppnt = elf_phdata;
 error = -ENOEXEC;
 retval = kernel_read(file, elf_ex.e_phoff, (char *)eppnt, j);
 if (retval != j)
  goto out_free_ph;

 for (j = 0, i = 0; i<elf_ex.e_phnum; i++)
  if ((eppnt + i)->p_type == PT_LOAD)
   j++;
 if (j != 1)
  goto out_free_ph;

 while (eppnt->p_type != PT_LOAD)
  eppnt++;


 down_write(&current->mm->mmap_sem);
 error = do_mmap(file,
   ELF_PAGESTART(eppnt->p_vaddr),
   (eppnt->p_filesz +
    ELF_PAGEOFFSET(eppnt->p_vaddr)),
   PROT_READ | PROT_WRITE | PROT_EXEC,
   MAP_FIXED | MAP_PRIVATE | MAP_DENYWRITE,
   (eppnt->p_offset -
    ELF_PAGEOFFSET(eppnt->p_vaddr)));
 up_write(&current->mm->mmap_sem);
 if (error != ELF_PAGESTART(eppnt->p_vaddr))
  goto out_free_ph;

 elf_bss = eppnt->p_vaddr + eppnt->p_filesz;
 if (padzero(elf_bss)) {
  error = -EFAULT;
  goto out_free_ph;
 }

 len = ELF_PAGESTART(eppnt->p_filesz + eppnt->p_vaddr +
       ELF_MIN_ALIGN - 1);
 bss = eppnt->p_memsz + eppnt->p_vaddr;
 if (bss > len) {
  down_write(&current->mm->mmap_sem);
  do_brk(len, bss - len);
  up_write(&current->mm->mmap_sem);
 }
 error = 0;

out_free_ph:
 kfree(elf_phdata);
out:
 return error;
}
