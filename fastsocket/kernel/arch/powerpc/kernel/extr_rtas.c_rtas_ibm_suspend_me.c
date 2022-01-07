
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_args {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int rtas_ibm_suspend_me(struct rtas_args *args)
{
 return -ENOSYS;
}
