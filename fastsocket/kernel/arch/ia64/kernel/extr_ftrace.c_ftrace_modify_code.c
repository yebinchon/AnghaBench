
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int EINVAL ;
 int EPERM ;
 int MCOUNT_INSN_SIZE ;
 int flush_icache_range (unsigned long,int) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 scalar_t__ probe_kernel_read (unsigned char*,void*,int) ;
 scalar_t__ probe_kernel_write (void*,unsigned char*,int) ;

__attribute__((used)) static int
ftrace_modify_code(unsigned long ip, unsigned char *old_code,
     unsigned char *new_code, int do_check)
{
 unsigned char replaced[MCOUNT_INSN_SIZE];
 if (!do_check)
  goto skip_check;


 if (probe_kernel_read(replaced, (void *)ip, MCOUNT_INSN_SIZE))
  return -EFAULT;


 if (memcmp(replaced, old_code, MCOUNT_INSN_SIZE) != 0)
  return -EINVAL;

skip_check:

 if (probe_kernel_write(((void *)ip), new_code, MCOUNT_INSN_SIZE))
  return -EPERM;
 flush_icache_range(ip, ip + MCOUNT_INSN_SIZE);

 return 0;
}
