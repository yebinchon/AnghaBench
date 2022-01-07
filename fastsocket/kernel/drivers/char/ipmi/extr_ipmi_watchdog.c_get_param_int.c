
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static int get_param_int(char *buffer, struct kernel_param *kp)
{
 return sprintf(buffer, "%i", *((int *)kp->arg));
}
