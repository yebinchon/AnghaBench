
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemcheck_error {int dummy; } ;


 size_t ARRAY_SIZE (struct kmemcheck_error*) ;
 scalar_t__ error_count ;
 struct kmemcheck_error* error_fifo ;
 size_t error_rd ;

__attribute__((used)) static struct kmemcheck_error *error_next_rd(void)
{
 struct kmemcheck_error *e;

 if (error_count == 0)
  return ((void*)0);

 e = &error_fifo[error_rd];
 if (++error_rd == ARRAY_SIZE(error_fifo))
  error_rd = 0;
 --error_count;
 return e;
}
