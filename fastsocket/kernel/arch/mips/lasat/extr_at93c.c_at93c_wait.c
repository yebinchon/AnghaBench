
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int at93c_end_op () ;
 int at93c_init_op () ;
 int at93c_read_databit () ;

__attribute__((used)) static void at93c_wait(void)
{
 at93c_init_op();
 while (!at93c_read_databit())
  ;
 at93c_end_op();
}
