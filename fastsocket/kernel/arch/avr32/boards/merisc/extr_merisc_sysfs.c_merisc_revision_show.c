
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class {int dummy; } ;
typedef scalar_t__ ssize_t ;


 char* merisc_revision () ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static ssize_t merisc_revision_show(struct class *class, char *buf)
{
 ssize_t ret = 0;

 sprintf(buf, "%s\n", merisc_revision());
 ret = strlen(buf) + 1;

 return ret;
}
