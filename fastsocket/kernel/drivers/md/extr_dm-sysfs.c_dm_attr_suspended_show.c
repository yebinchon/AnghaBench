
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
typedef int ssize_t ;


 int dm_suspended_md (struct mapped_device*) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t dm_attr_suspended_show(struct mapped_device *md, char *buf)
{
 sprintf(buf, "%d\n", dm_suspended_md(md));

 return strlen(buf);
}
