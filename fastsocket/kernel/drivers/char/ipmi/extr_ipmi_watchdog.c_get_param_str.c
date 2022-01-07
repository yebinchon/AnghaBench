
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int arg; } ;
typedef int (* action_fn ) (int *,char*) ;


 int strlen (char*) ;

__attribute__((used)) static int get_param_str(char *buffer, struct kernel_param *kp)
{
 action_fn fn = (action_fn) kp->arg;
 int rv;

 rv = fn(((void*)0), buffer);
 if (rv)
  return rv;
 return strlen(buffer);
}
