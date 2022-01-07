
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {TYPE_1__* f_op; } ;
struct elfhdr {scalar_t__ e_type; int e_phentsize; int e_phnum; int e_phoff; } ;
struct elf_phdr {scalar_t__ p_type; int p_flags; unsigned long p_vaddr; unsigned long p_filesz; unsigned long p_memsz; } ;
struct TYPE_6__ {TYPE_2__* mm; } ;
struct TYPE_5__ {int mmap_sem; } ;
struct TYPE_4__ {int mmap; } ;


 scalar_t__ BAD_ADDR (unsigned long) ;
 unsigned long EFAULT ;
 unsigned long EINVAL ;
 unsigned long EIO ;
 int ELF_MIN_ALIGN ;
 unsigned long ELF_PAGESTART (unsigned long) ;
 unsigned long ENOMEM ;
 scalar_t__ ET_DYN ;
 scalar_t__ ET_EXEC ;
 int GFP_KERNEL ;
 int MAP_DENYWRITE ;
 int MAP_FIXED ;
 int MAP_PRIVATE ;
 int PF_R ;
 int PF_W ;
 int PF_X ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ PT_LOAD ;
 unsigned long TASK_SIZE ;
 TYPE_3__* current ;
 unsigned long do_brk (unsigned long,unsigned long) ;
 int down_write (int *) ;
 int elf_check_arch (struct elfhdr*) ;
 unsigned long elf_map (struct file*,unsigned long,struct elf_phdr*,int,int,unsigned long) ;
 int kernel_read (struct file*,int ,char*,int) ;
 int kfree (struct elf_phdr*) ;
 struct elf_phdr* kmalloc (int,int ) ;
 scalar_t__ padzero (unsigned long) ;
 unsigned long total_mapping_size (struct elf_phdr*,int) ;
 int up_write (int *) ;

__attribute__((used)) static unsigned long load_elf_interp(struct elfhdr *interp_elf_ex,
  struct file *interpreter, unsigned long *interp_map_addr,
  unsigned long no_base)
{
 struct elf_phdr *elf_phdata;
 struct elf_phdr *eppnt;
 unsigned long load_addr = 0;
 int load_addr_set = 0;
 unsigned long last_bss = 0, elf_bss = 0;
 unsigned long error = ~0UL;
 unsigned long total_size;
 int retval, i, size;


 if (interp_elf_ex->e_type != ET_EXEC &&
     interp_elf_ex->e_type != ET_DYN)
  goto out;
 if (!elf_check_arch(interp_elf_ex))
  goto out;
 if (!interpreter->f_op || !interpreter->f_op->mmap)
  goto out;





 if (interp_elf_ex->e_phentsize != sizeof(struct elf_phdr))
  goto out;
 if (interp_elf_ex->e_phnum < 1 ||
  interp_elf_ex->e_phnum > 65536U / sizeof(struct elf_phdr))
  goto out;


 size = sizeof(struct elf_phdr) * interp_elf_ex->e_phnum;
 if (size > ELF_MIN_ALIGN)
  goto out;
 elf_phdata = kmalloc(size, GFP_KERNEL);
 if (!elf_phdata)
  goto out;

 retval = kernel_read(interpreter, interp_elf_ex->e_phoff,
        (char *)elf_phdata,size);
 error = -EIO;
 if (retval != size) {
  if (retval < 0)
   error = retval;
  goto out_close;
 }

 total_size = total_mapping_size(elf_phdata, interp_elf_ex->e_phnum);
 if (!total_size) {
  error = -EINVAL;
  goto out_close;
 }

 eppnt = elf_phdata;
 for (i = 0; i < interp_elf_ex->e_phnum; i++, eppnt++) {
  if (eppnt->p_type == PT_LOAD) {
   int elf_type = MAP_PRIVATE | MAP_DENYWRITE;
   int elf_prot = 0;
   unsigned long vaddr = 0;
   unsigned long k, map_addr;

   if (eppnt->p_flags & PF_R)
        elf_prot = PROT_READ;
   if (eppnt->p_flags & PF_W)
    elf_prot |= PROT_WRITE;
   if (eppnt->p_flags & PF_X)
    elf_prot |= PROT_EXEC;
   vaddr = eppnt->p_vaddr;
   if (interp_elf_ex->e_type == ET_EXEC || load_addr_set)
    elf_type |= MAP_FIXED;
   else if (no_base && interp_elf_ex->e_type == ET_DYN)
    load_addr = -vaddr;

   map_addr = elf_map(interpreter, load_addr + vaddr,
     eppnt, elf_prot, elf_type, total_size);
   total_size = 0;
   if (!*interp_map_addr)
    *interp_map_addr = map_addr;
   error = map_addr;
   if (BAD_ADDR(map_addr))
    goto out_close;

   if (!load_addr_set &&
       interp_elf_ex->e_type == ET_DYN) {
    load_addr = map_addr - ELF_PAGESTART(vaddr);
    load_addr_set = 1;
   }






   k = load_addr + eppnt->p_vaddr;
   if (BAD_ADDR(k) ||
       eppnt->p_filesz > eppnt->p_memsz ||
       eppnt->p_memsz > TASK_SIZE ||
       TASK_SIZE - eppnt->p_memsz < k) {
    error = -ENOMEM;
    goto out_close;
   }





   k = load_addr + eppnt->p_vaddr + eppnt->p_filesz;
   if (k > elf_bss)
    elf_bss = k;





   k = load_addr + eppnt->p_memsz + eppnt->p_vaddr;
   if (k > last_bss)
    last_bss = k;
  }
 }

 if (last_bss > elf_bss) {






  if (padzero(elf_bss)) {
   error = -EFAULT;
   goto out_close;
  }


  elf_bss = ELF_PAGESTART(elf_bss + ELF_MIN_ALIGN - 1);


  down_write(&current->mm->mmap_sem);
  error = do_brk(elf_bss, last_bss - elf_bss);
  up_write(&current->mm->mmap_sem);
  if (BAD_ADDR(error))
   goto out_close;
 }

 error = load_addr;

out_close:
 kfree(elf_phdata);
out:
 return error;
}
