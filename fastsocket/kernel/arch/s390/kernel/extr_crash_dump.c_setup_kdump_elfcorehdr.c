
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int OLDMEM_BASE ;
 unsigned long long elfcorehdr_addr ;
 size_t elfcorehdr_size ;
 scalar_t__ is_kdump_kernel () ;
 int s390_elf_corehdr_create (char**,size_t*) ;

__attribute__((used)) static int setup_kdump_elfcorehdr(void)
{
 size_t elfcorebuf_sz;
 char *elfcorebuf;

 if (!OLDMEM_BASE || is_kdump_kernel())
  return -EINVAL;
 s390_elf_corehdr_create(&elfcorebuf, &elfcorebuf_sz);
 elfcorehdr_addr = (unsigned long long) elfcorebuf;
 elfcorehdr_size = elfcorebuf_sz;
 return 0;
}
