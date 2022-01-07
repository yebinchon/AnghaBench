
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lguest {TYPE_1__* lguest_data; } ;
struct TYPE_2__ {int syscall_vec; } ;


 int could_be_syscall (int ) ;
 scalar_t__ get_user (int ,int *) ;

bool check_syscall_vector(struct lguest *lg)
{
 u32 vector;

 if (get_user(vector, &lg->lguest_data->syscall_vec))
  return 0;

 return could_be_syscall(vector);
}
