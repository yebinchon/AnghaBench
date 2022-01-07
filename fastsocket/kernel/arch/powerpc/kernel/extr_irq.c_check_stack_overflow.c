
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;


 int THREAD_SIZE ;
 int __get_SP () ;
 int dump_stack () ;
 int printk (char*,long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void check_stack_overflow(void)
{
}
