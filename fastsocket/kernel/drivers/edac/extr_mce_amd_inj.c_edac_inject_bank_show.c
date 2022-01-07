
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct edac_mce_attr {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int bank; } ;


 TYPE_1__ i_mce ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t edac_inject_bank_show(struct kobject *kobj,
         struct edac_mce_attr *attr, char *buf)
{
 return sprintf(buf, "%d\n", i_mce.bank);
}
