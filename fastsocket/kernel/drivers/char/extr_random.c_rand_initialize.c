
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blocking_pool ;
 int init_std_data (int *) ;
 int input_pool ;
 int nonblocking_pool ;

__attribute__((used)) static int rand_initialize(void)
{
 init_std_data(&input_pool);
 init_std_data(&blocking_pool);
 init_std_data(&nonblocking_pool);
 return 0;
}
