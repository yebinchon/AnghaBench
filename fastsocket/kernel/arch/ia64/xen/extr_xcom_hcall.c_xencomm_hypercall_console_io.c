
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xencomm_arch_hypercall_console_io (int,int,int ) ;
 int xencomm_is_initialized () ;
 int xencomm_map_no_alloc (char*,int) ;

int
xencomm_hypercall_console_io(int cmd, int count, char *str)
{



 if (!xencomm_is_initialized())
  return 0;

 return xencomm_arch_hypercall_console_io
  (cmd, count, xencomm_map_no_alloc(str, count));
}
