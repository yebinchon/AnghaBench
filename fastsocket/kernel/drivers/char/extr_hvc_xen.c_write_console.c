
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int HYPERVISOR_sched_op (int ,int *) ;
 int SCHEDOP_yield ;
 int __write_console (char const*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int write_console(uint32_t vtermno, const char *data, int len)
{
 int ret = len;







 while (len) {
  int sent = __write_console(data, len);

  data += sent;
  len -= sent;

  if (unlikely(len))
   HYPERVISOR_sched_op(SCHEDOP_yield, ((void*)0));
 }

 return ret;
}
