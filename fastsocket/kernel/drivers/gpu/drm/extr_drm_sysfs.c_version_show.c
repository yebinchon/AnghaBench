
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class {int dummy; } ;
typedef int ssize_t ;


 char* CORE_DATE ;
 int CORE_MAJOR ;
 int CORE_MINOR ;
 char* CORE_NAME ;
 int CORE_PATCHLEVEL ;
 int sprintf (char*,char*,char*,int,int,int,char*) ;

__attribute__((used)) static ssize_t version_show(struct class *dev, char *buf)
{
 return sprintf(buf, "%s %d.%d.%d %s\n", CORE_NAME, CORE_MAJOR,
         CORE_MINOR, CORE_PATCHLEVEL, CORE_DATE);
}
