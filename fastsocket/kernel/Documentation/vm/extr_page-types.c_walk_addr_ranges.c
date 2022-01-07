
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int PROC_KPAGEFLAGS ;
 int ULONG_MAX ;
 int add_addr_range (int ,int ) ;
 int checked_open (int ,int ) ;
 int close (int ) ;
 int kpageflags_fd ;
 int nr_addr_ranges ;
 int * opt_offset ;
 int opt_pid ;
 int * opt_size ;
 int walk_pfn (int ,int ,int ) ;
 int walk_task (int ,int ) ;

__attribute__((used)) static void walk_addr_ranges(void)
{
 int i;

 kpageflags_fd = checked_open(PROC_KPAGEFLAGS, O_RDONLY);

 if (!nr_addr_ranges)
  add_addr_range(0, ULONG_MAX);

 for (i = 0; i < nr_addr_ranges; i++)
  if (!opt_pid)
   walk_pfn(0, opt_offset[i], opt_size[i]);
  else
   walk_task(opt_offset[i], opt_size[i]);

 close(kpageflags_fd);
}
