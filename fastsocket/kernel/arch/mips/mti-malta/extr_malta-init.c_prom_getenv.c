
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* prom_envp (int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

char *prom_getenv(char *envname)
{






 int i, index=0;

 i = strlen(envname);

 while (prom_envp(index)) {
  if(strncmp(envname, prom_envp(index), i) == 0) {
   return(prom_envp(index+1));
  }
  index += 2;
 }

 return ((void*)0);
}
