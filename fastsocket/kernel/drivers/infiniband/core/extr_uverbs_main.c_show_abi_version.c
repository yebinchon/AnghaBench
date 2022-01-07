
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class {int dummy; } ;
typedef int ssize_t ;


 int IB_USER_VERBS_ABI_VERSION ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_abi_version(struct class *class, char *buf)
{
 return sprintf(buf, "%d\n", IB_USER_VERBS_ABI_VERSION);
}
