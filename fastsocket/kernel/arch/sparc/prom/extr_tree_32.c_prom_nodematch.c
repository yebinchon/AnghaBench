
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int namebuf ;


 int prom_getproperty (int,char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

int prom_nodematch(int node, char *name)
{
 int error;

 static char namebuf[128];
 error = prom_getproperty(node, "name", namebuf, sizeof(namebuf));
 if (error == -1) return 0;
 if(strcmp(namebuf, name) == 0) return 1;
 return 0;
}
